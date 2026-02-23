FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8000

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["FSharpEfCore.fsproj", "./"]
RUN dotnet restore "FSharpEfCore.fsproj"
COPY . .
RUN dotnet build "FSharpEfCore.fsproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "FSharpEfCore.fsproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "FSharpEfCore.dll"]
