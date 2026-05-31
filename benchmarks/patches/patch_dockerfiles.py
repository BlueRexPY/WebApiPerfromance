import os
for folder in ["apps/RustActix", "apps/RustAxum"]:
    path = os.path.join(folder, "Dockerfile")
    with open(path, "r") as f:
        df = f.read()
    
    # We need to copy build.rs and proto
    # "COPY Cargo.toml Cargo.lock ./" or "COPY Cargo.toml ./" 
    
    if "Cargo.toml Cargo.lock" in df:
        df = df.replace("COPY Cargo.toml Cargo.lock ./", "COPY Cargo.toml Cargo.lock ./\nCOPY build.rs ./\nCOPY proto/ ./proto/")
    else:
        df = df.replace("COPY Cargo.toml ./", "COPY Cargo.toml ./\nCOPY build.rs ./\nCOPY proto/ ./proto/")

    with open(path, "w") as f:
        f.write(df)

print("Dockerfiles patched")
