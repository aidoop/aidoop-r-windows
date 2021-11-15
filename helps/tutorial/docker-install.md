# Docker Installation

## Procedure

### Download and run the installation script
```bash
curl -fsSL https://raw.githubusercontent.com/things-factory/things-factory/master/packages/operato-robotics/installer/install.sh | bash -s
```

### Run docker containers of operato-robotics
```bash
./start.sh
```

### Stop the running containers
```bash
./stop.sh
```

### Run the migrate script after running ‘start.sh’, if you run operato-robotics dockers first after installation
```bash
migrate.sh
```
If migration finished, restart containers using ‘stop.sh’ and ‘start.sh’