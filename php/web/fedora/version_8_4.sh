# Add the Remi's RPM repository.
sudo dnf install -y dnf-plugins-core
sudo dnf install -y https://rpms.remirepo.net/fedora/remi-release-$(rpm -E %fedora).rpm
sudo dnf module reset php -y
sudo dnf module enable php:remi-8.4 -y

# Install PHP (single/default version).
sudo dnf install -y php
