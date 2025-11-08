FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["DotNetApiAot.csproj", "./"]
RUN dotnet restore "DotNetApiAot.csproj"
COPY . .
RUN dotnet publish "DotNetApiAot.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-alpine AS final
WORKDIR /app
COPY --from=build /app/publish .
ENV ASPNETCORE_URLS=http://+:8000
ENTRYPOINT ["./DotNetApiAot"]
