FROM mcr.microsoft.com/dotnet/sdk:9.0-noble AS build
WORKDIR /src

# Install native AOT prerequisites
RUN apt-get update \
    && apt-get install -y clang zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ["DotNetEfCoreAot.csproj", "./"]
RUN dotnet restore "DotNetEfCoreAot.csproj"
COPY . .

# Install dotnet-ef tool
RUN dotnet tool install --global dotnet-ef --version 9.0.4
ENV PATH="$PATH:/root/.dotnet/tools"

# Generate the EF Core compiled model for AOT.
# Program.cs references CompiledModels.OrdersDbContextModel which doesn't exist
# yet, so we temporarily strip those references so the project compiles for
# model generation, then restore the original file before AOT publish.
RUN cp Program.cs Program.cs.orig && \
    sed -i '/using CompiledModels;/d' Program.cs && \
    sed -i '/options\.UseModel/d' Program.cs && \
    dotnet ef dbcontext optimize \
    --context OrdersDbContext \
    --namespace CompiledModels \
    --output-dir CompiledModels && \
    mv Program.cs.orig Program.cs

# Publish with native AOT (compiled model files are now present)
RUN dotnet publish "DotNetEfCoreAot.csproj" -c Release -o /app/publish

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
ENTRYPOINT ["./DotNetEfCoreAot"]
