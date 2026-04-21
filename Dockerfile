# Step 1: Use an existing "web server" image called Nginx
FROM nginx:alpine

# Step 2: Copy your html file into the web server's folder
# Nginx looks in /usr/share/nginx/html to serve files
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Tell Docker to open port 80 so we can see the site
EXPOSE 80