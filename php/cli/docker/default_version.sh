# Pull the PHP Docker image.
docker pull php-cli

# Launch a container with PHP.
docker run --rm -it --entrypoint bash php-cli
