for proj in ["apps/RustActix", "apps/RustAxum"]:
    with open(f"{proj}/src/main.rs", "r") as f:
        src = f.read()
    
    src = src.replace("AppState { pool }", "AppState { pool: pool.clone() }")
    
    with open(f"{proj}/src/main.rs", "w") as f:
        f.write(src)
