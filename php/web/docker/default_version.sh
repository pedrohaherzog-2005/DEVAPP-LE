# Pull the PHP Docker image.
docker pull php:fpm

# Launch a container with PHP.
docker run --rm -it --entrypoint bash php:fpm
