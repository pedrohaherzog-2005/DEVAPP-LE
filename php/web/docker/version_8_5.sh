# Pull the PHP Docker image.
docker pull php:8.5-fpm

# Launch a container with PHP.
docker run --rm -it --entrypoint bash php:8.5-fpm
