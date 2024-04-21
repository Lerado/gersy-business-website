# Stage 1: Serve from nginx
FROM --platform=$TARGETPLATFORM fholzer/nginx-brotli

ARG TARGETPLATFORM

COPY --from=build-step /app/public/ /usr/share/nginx/html
COPY --from=build-step /app/.docker/nginx.conf /etc/nginx/conf.d/default.conf