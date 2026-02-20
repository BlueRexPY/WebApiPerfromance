FROM mcr.microsoft.com/dotnet/sdk:9.0-noble AS build
WORKDIR /src

# Install native AOT prerequisites
RUN apt-get update \
    && apt-get install -y clang zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ["FSharpApiAot.fsproj", "./"]
RUN dotnet restore "FSharpApiAot.fsproj"
COPY . .
RUN dotnet publish "FSharpApiAot.fsproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble AS final
WORKDIR /app

# Install DNS resolution dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    libc6 \
    libicu74 \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /app/publish .
ENV ASPNETCORE_URLS=http://+:8000
ENTRYPOINT ["./FSharpApiAot"]
