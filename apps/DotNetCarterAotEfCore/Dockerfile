FROM mcr.microsoft.com/dotnet/sdk:9.0-noble AS build
WORKDIR /src

RUN apt-get update \
    && apt-get install -y clang zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ["DotNetCarterAotEfCore.csproj", "./"]
RUN dotnet restore "DotNetCarterAotEfCore.csproj"
COPY . .

RUN dotnet tool install --global dotnet-ef --version 9.0.4
ENV PATH="$PATH:/root/.dotnet/tools"

RUN cp Program.cs Program.cs.orig && \
    sed -i '/using CompiledModels;/d' Program.cs && \
    sed -i '/options\.UseModel/d' Program.cs && \
    dotnet ef dbcontext optimize \
    --context OrdersDbContext \
    --namespace CompiledModels \
    --output-dir CompiledModels && \
    mv Program.cs.orig Program.cs

RUN dotnet publish "DotNetCarterAotEfCore.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime-deps:9.0-noble AS final
WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    libc6 \
    libicu74 \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /app/publish .
ENV ASPNETCORE_URLS=http://+:8000
ENTRYPOINT ["./DotNetCarterAotEfCore"]
