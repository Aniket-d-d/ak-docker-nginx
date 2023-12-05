# ak-docker-nginx

## ak-docker-nginx: Nginx Configuration for static webpages on EC2

Welcome to "ak-docker-nginx," a repository designed to streamline the process of exposing the beautiful VasecomProject webpages on an EC2 instance using Nginx. This repository consists of two key files: "Dockerfile" and "nginx-configuration.conf."

### Files:

Dockerfile: The heart of the containerization process. This Dockerfile orchestrates the setup, ensuring seamless deployment of the VasecomProject on an EC2 instance.

nginx-configuration.conf: An alternate Nginx configuration file. This file serves as an option to tailor Nginx settings, allowing users to customize the behavior of the web server based on their specific requirements.

### Steps to Deploy:
1. Create an EC2 instance and SSH into it.(Inbound rule on port 8080 should be enabled for EC2.)
2. Clone this repository and enter in it.
```
git clone https://github.com/Aniket-d-d/ak-docker-nginx.git
cd ak-docker-nginx
```
3. Get all the html pages and and its /images directory in [VasecomProject](https://github.com/Aniket-d-d/VasecomProject.git) directory.
4. You are ready to build an Image and deploy it.
5. Build the Docker Image:
```
docker build -t image-name:image-tag .
```
6. Run the container:
```
docker run -d -p 80:80 --name container-name image-name:image-tag
```
7. Access the Webpages: Open your web browser and navigate to your EC2 instance's public IP or domain name. You should now see the VasecomProject webpages exposed through Nginx.


### Customizing Nginx Configuration:
The default nginx config file can be found in the `/etc/nginx/` directory.

If you made changes to the nginx-configuration.conf file, the Dockerfile ensures that it gets copied to the default Nginx configuration location during the image build process.
Explore the flexibility of Nginx with "ak-docker-nginx" as you expose and customize your VasecomProject webpages effortlessly on EC2.
