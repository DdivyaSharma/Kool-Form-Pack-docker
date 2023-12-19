# Dockerized Apache Web Server

This Docker image sets up an Apache web server on Ubuntu, using the latest base image.

## Features

- **Creator:** Divya 🔥
- **Web Server:** Apache2
- **Operating System:** Ubuntu


### Build the Docker Image

```bash
docker build -t my-apache-server .
```

Run the Docker Container

```bash
docker run -p 80:80 --name my-apache-container my-apache-server
```

> [!TIP]
> Replace my-apache-server and my-apache-container with your  image and container names.

### Access the Web Server
Visit http://localhost:80 in your web browser.


### Adding Content
You can add your custom web content by placing files in the `/var/www/html/` directory.

### Logs
Apache logs are stored in the `/var/log/apache2/` directory. 
You can also mount an external volume for persistent logs.
