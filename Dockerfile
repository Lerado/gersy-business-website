# Stage 1: Serve from nginx
FROM --platform=$TARGETPLATFORM fholzer/nginx-brotli

ARG TARGETPLATFORM

COPY /public/ /usr/share/nginx/html
COPY /.docker/nginx.conf /etc/nginx/conf.d/default.conf