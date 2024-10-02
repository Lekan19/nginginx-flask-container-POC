# base image
FROM nginx:alpine


# copy the nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose ports for HTTP and HTTPS
EXPOSE 80
EXPOSE 443

# SSL certificates should be provided externally or generated
COPY files/localhost.crt /etc/nginx/ssl/localhost.crt
COPY files/localhost.key /etc/nginx/ssl/localhost.key