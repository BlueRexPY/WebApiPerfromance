import re

for cargo_file in ["apps/RustActix/Cargo.toml", "apps/RustAxum/Cargo.toml"]:
    with open(cargo_file, "r") as f:
        src = f.read()
    
    # Remove if exist
    src = src.replace('\nprost = "0.13"\ntonic = "0.12"\n', "")
    
    # inject under [dependencies]
    src = src.replace("[dependencies]\n", "[dependencies]\nprost = \"0.13\"\ntonic = \"0.12\"\n")
    
    if "[build-dependencies]" not in src:
        src += "\n[build-dependencies]\ntonic-build = \"0.12\"\n"
        
    with open(cargo_file, "w") as f:
        f.write(src)
print("Cargo patched")
