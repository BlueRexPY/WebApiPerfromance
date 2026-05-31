import re

with open("benchmarks/config.py", "r") as f:
    config = f.read()

services_ports = {
    "gochi": 9023,
    "goechoapi": 9096,
    "gofiber": 9008,
    "gogin": 9066,
    "gonethttp": 9032,
    "rustactix": 9005,
    "rustaxum": 9022
}

for svc, gport in services_ports.items():
    # Service("gochi", 8023, "Go Chi", "GoChi", grpc_port=9000),
    # replace grpc_port=9000 with calculated dynamically ones
    pattern = r'Service\("' + svc + r'", (\d+), "([^"]+)", "([^"]+)", grpc_port=9000\)'
    def repl(m):
        return f'Service("{svc}", {m.group(1)}, "{m.group(2)}", "{m.group(3)}", grpc_port={gport})'
    config = re.sub(pattern, repl, config)

with open("benchmarks/config.py", "w") as f:
    f.write(config)

print("config patched")
