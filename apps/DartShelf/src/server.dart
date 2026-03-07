import 'dart:convert';
import 'dart:io';

import 'package:postgres/postgres.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

late Pool _pool;

/// Parse DATABASE_URL: postgresql://user:pass@host:port/db
Endpoint _parseDbUrl(String url) {
  final uri = Uri.parse(url);
  return Endpoint(
    host: uri.host,
    port: uri.port == 0 ? 5432 : uri.port,
    database: uri.path.replaceFirst('/', ''),
    username: uri.userInfo.split(':').first,
    password: uri.userInfo.contains(':') ? uri.userInfo.split(':').last : null,
  );
}

Future<void> main() async {
  final dbUrl =
      Platform.environment['DATABASE_URL'] ??
      'postgresql://apiuser:apipassword@db:5432/ordersdb';

  _pool = Pool.withEndpoints(
    [_parseDbUrl(dbUrl)],
    settings: const PoolSettings(
      maxConnectionCount: 120,
      applicationName: 'dart_shelf_api',
      sslMode: SslMode.disable,
    ),
  );

  final handler = const Pipeline().addHandler(_router);

  final server =
      await io.serve(handler, InternetAddress.anyIPv4, 8000, shared: true);
  stderr.writeln('Serving on http://${server.address.host}:${server.port}');
}

Future<Response> _router(Request request) async {
  if (request.method == 'GET') {
    if (request.url.path == '' || request.url.path == '/') {
      return _hello(request);
    }
    if (request.url.path == 'orders') {
      return _orders(request);
    }
  }
  return Response.notFound('Not Found');
}

Response _hello(Request request) {
  return Response.ok(
    jsonEncode({'message': 'Hello, World!'}),
    headers: {'content-type': 'application/json'},
  );
}

Future<Response> _orders(Request request) async {
  return _pool.withConnection((conn) async {
    final result = await conn.execute(
      Sql.named(
        'SELECT id, customer_id, total_cents, status, created_at '
        'FROM orders LIMIT @limit OFFSET @offset',
      ),
      parameters: {'limit': 100, 'offset': 1000},
    );

    final orders = result.map((row) {
      final r = row.toColumnMap();
      return {
        'id': r['id'],
        'customer_id': r['customer_id'],
        'total_cents': r['total_cents'],
        'status': r['status'],
        'created_at': (r['created_at'] as DateTime).toIso8601String(),
      };
    }).toList();

    return Response.ok(
      jsonEncode(orders),
      headers: {'content-type': 'application/json'},
    );
  });
}
