import os
import re

# 1. Update Cargo.toml for RustActix
with open("apps/RustActix/Cargo.toml", "r") as f:
    actix_cargo = f.read()

actix_cargo += """
prost = "0.13"
tonic = "0.12"

[build-dependencies]
tonic-build = "0.12"
"""
with open("apps/RustActix/Cargo.toml", "w") as f:
    f.write(actix_cargo)

# 1b. Create build.rs for RustActix
with open("apps/RustActix/build.rs", "w") as f:
    f.write("""fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("proto/api.proto")?;
    Ok(())
}
""")

# 2. Update Cargo.toml for RustAxum
with open("apps/RustAxum/Cargo.toml", "r") as f:
    axum_cargo = f.read()

axum_cargo += """
prost = "0.13"
tonic = "0.12"

[build-dependencies]
tonic-build = "0.12"
"""
with open("apps/RustAxum/Cargo.toml", "w") as f:
    f.write(axum_cargo)

# 2b. Create build.rs for RustAxum
with open("apps/RustAxum/build.rs", "w") as f:
    f.write("""fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("proto/api.proto")?;
    Ok(())
}
""")

print("Cargo logic patched")
