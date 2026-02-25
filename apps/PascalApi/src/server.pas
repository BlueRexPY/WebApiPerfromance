program WebServer;

{$mode objfpc}{$H+}

uses
  cthreads,
  fphttpapp,
  HTTPDefs,
  httproute,
  fpjson,
  pqconnection,
  sqldb,
  db,
  sysutils,
  classes,
  syncobjs;

{ ── Connection pool ─────────────────────────────────────────────────────── }

const
  POOL_SIZE = 16;

var
  DatabaseURL: string;
  ConnPool:   array[0..POOL_SIZE-1] of TPQConnection;
  TransPool:  array[0..POOL_SIZE-1] of TSQLTransaction;
  PoolInUse:  array[0..POOL_SIZE-1] of Boolean;
  PoolLock:   TCriticalSection;

type
  TDBParams = record
    Host:     string;
    Port:     integer;
    Database: string;
    User:     string;
    Password: string;
  end;

function ParseDatabaseURL(const AURL: string): TDBParams;
var
  Rest, UserInfo, HostPart: string;
begin
  Result.Port := 5432;
  Rest := AURL;
  if Pos('://', Rest) > 0 then
    Rest := Copy(Rest, Pos('://', Rest) + 3, Length(Rest));
  if Pos('@', Rest) > 0 then
  begin
    UserInfo := Copy(Rest, 1, Pos('@', Rest) - 1);
    Rest := Copy(Rest, Pos('@', Rest) + 1, Length(Rest));
    if Pos(':', UserInfo) > 0 then
    begin
      Result.User     := Copy(UserInfo, 1, Pos(':', UserInfo) - 1);
      Result.Password := Copy(UserInfo, Pos(':', UserInfo) + 1, Length(UserInfo));
    end
    else
      Result.User := UserInfo;
  end;
  if Pos('/', Rest) > 0 then
  begin
    Result.Database := Copy(Rest, Pos('/', Rest) + 1, Length(Rest));
    HostPart        := Copy(Rest, 1, Pos('/', Rest) - 1);
  end
  else
    HostPart := Rest;
  if Pos(':', HostPart) > 0 then
  begin
    Result.Host := Copy(HostPart, 1, Pos(':', HostPart) - 1);
    Result.Port := StrToIntDef(
      Copy(HostPart, Pos(':', HostPart) + 1, Length(HostPart)), 5432);
  end
  else
    Result.Host := HostPart;
end;

{ Acquire a free pool slot.  Spins with 1 ms backoff until one is free. }
function AcquireSlot: integer;
var
  i: integer;
begin
  while True do
  begin
    PoolLock.Acquire;
    for i := 0 to POOL_SIZE - 1 do
      if not PoolInUse[i] then
      begin
        PoolInUse[i] := True;
        PoolLock.Release;
        Result := i;
        Exit;
      end;
    PoolLock.Release;
    Sleep(1);
  end;
  Result := -1; { unreachable }
end;

procedure ReleaseSlot(i: integer);
begin
  PoolLock.Acquire;
  PoolInUse[i] := False;
  PoolLock.Release;
end;

{ ── Route handlers ──────────────────────────────────────────────────────── }

procedure HelloHandler(ARequest: TRequest; AResponse: TResponse);
begin
  AResponse.ContentType := 'application/json';
  AResponse.Content     := '{"message":"Hello, World!"}';
end;

procedure OrdersHandler(ARequest: TRequest; AResponse: TResponse);
var
  idx:   integer;
  Query: TSQLQuery;
  Arr:   TJSONArray;
  Obj:   TJSONObject;
begin
  idx := AcquireSlot;
  try
    Query := TSQLQuery.Create(nil);
    Arr   := TJSONArray.Create;
    try
      Query.DataBase    := ConnPool[idx];
      Query.Transaction := TransPool[idx];
      { Re-open the connection if it was lost or never opened }
      if not ConnPool[idx].Connected then
        ConnPool[idx].Open;
      { Ensure no leftover transaction from a previous error }
      if TransPool[idx].Active then
        TransPool[idx].Rollback;
      TransPool[idx].StartTransaction;
      Query.SQL.Text :=
        'SELECT id, customer_id, total_cents, status, created_at::text ' +
        'FROM orders LIMIT 100 OFFSET 1000';
      Query.Open;
      while not Query.EOF do
      begin
        Obj := TJSONObject.Create;
        Obj.Add('id',          Query.FieldByName('id').AsInteger);
        Obj.Add('customer_id', Query.FieldByName('customer_id').AsInteger);
        Obj.Add('total_cents', Query.FieldByName('total_cents').AsInteger);
        Obj.Add('status',      Query.FieldByName('status').AsString);
        Obj.Add('created_at',  Query.FieldByName('created_at').AsString);
        Arr.Add(Obj);
        Query.Next;
      end;
      Query.Close;
      TransPool[idx].Rollback;
      AResponse.ContentType := 'application/json';
      AResponse.Content     := Arr.AsJSON;
    finally
      Query.Free;
      Arr.Free;
    end;
  finally
    ReleaseSlot(idx);
  end;
end;

{ ── Main ─────────────────────────────────────────────────────────────────── }

var
  Params: TDBParams;
  i:      integer;

begin
  DatabaseURL := GetEnvironmentVariable('DATABASE_URL');
  if DatabaseURL = '' then
    DatabaseURL := 'postgresql://apiuser:apipassword@db:5432/ordersdb';

  Params   := ParseDatabaseURL(DatabaseURL);
  PoolLock := TCriticalSection.Create;

  { Open all pool connections up-front; ignore individual failures
    (in production the DB is always up, but we tolerate startup races) }
  for i := 0 to POOL_SIZE - 1 do
  begin
    ConnPool[i] := TPQConnection.Create(nil);
    TransPool[i] := TSQLTransaction.Create(nil);
    ConnPool[i].HostName     := Params.Host;
    ConnPool[i].DatabaseName := Params.Database;
    ConnPool[i].UserName     := Params.User;
    ConnPool[i].Password     := Params.Password;
    TransPool[i].DataBase    := ConnPool[i];
    ConnPool[i].Transaction  := TransPool[i];
    try
      ConnPool[i].Open;
    except
      on E: Exception do
        { connection will be retried lazily on first use — swallow here }
        ;
    end;
    PoolInUse[i] := False;
  end;

  HTTPRouter.RegisterRoute('/',       rmGet, @HelloHandler,  False);
  HTTPRouter.RegisterRoute('/orders', rmGet, @OrdersHandler, False);

  Application.Port      := 8000;
  Application.Threaded  := True;
  Application.Initialize;
  Application.Run;
end.
