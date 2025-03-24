# Use Base Image of webserver
FROM nginx:latest

# Copy a source code in container image
COPY src/ /usr/share/nginx/html/

# Defining Your work dir
WORKDIR /usr/share/nginx/html/

# Expose Your Port
EXPOSE 80

# Runnig in Forgroumd
CMD ["nginx", "-g", "daemon off;"]