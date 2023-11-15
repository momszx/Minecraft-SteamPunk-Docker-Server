# Dockerized Minecraft Server

This Dockerfile sets up a Minecraft server using Eclipse Temurin 17 as the base image. It downloads a modpack from CurseForge, extracts it into the `/minecraft` directory, and prepares the server for execution.

## Usage

### Build the Docker Image

```bash
docker build -t minecraft-server .
```

Replace `minecraft-server` with the desired image name.

### Run the Docker Container

```bash
docker run -it -p 25565:25565 -v /local/path:/minecraft minecraft-server
```

- `-it`: Interactive mode for the terminal.
- `-p 25565:25565`: Maps the container's port 25565 to the host's port 25565.
- `-v /local/path:/minecraft`: Binds the local directory to the `/minecraft` directory in the container.

Replace `/local/path` with the absolute path to the local directory where you want to store Minecraft data.

### Access the Minecraft Server

Connect to the Minecraft server using your favorite Minecraft client and point it to `localhost:25565` or the appropriate IP address.

## Dockerfile Details

The Dockerfile performs the following actions:

1. Updates package lists and installs necessary tools.
2. Sets the working directory to `/minecraft`.
3. Downloads a Minecraft modpack from CurseForge and extracts it.
4. Grants execute permissions to the `start.sh` script.
5. Exposes port 25565 for Minecraft server connections.
6. Defines the default command to execute the `start.sh` script.

## Customize

Modify the Dockerfile or `start.sh` script to customize the Minecraft server settings, JVM arguments, or any other configurations as needed.

---

Feel free to adapt and expand this README according to your specific requirements and instructions.