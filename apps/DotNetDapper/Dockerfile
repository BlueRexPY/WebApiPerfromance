FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8000

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["DotNetDapper.csproj", "./"]
RUN dotnet restore "DotNetDapper.csproj"
COPY . .
RUN dotnet build "DotNetDapper.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DotNetDapper.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DotNetDapper.dll"]
