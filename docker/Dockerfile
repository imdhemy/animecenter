FROM php:5.6

# Debian Jessie is EOL.
# Use archive.debian.org and relax APT security checks so we can still install packages.
RUN set -eux; \
    rm -f /etc/apt/sources.list.d/*.list || true; \
    printf '%s\n' \
      'deb [trusted=yes] http://archive.debian.org/debian jessie main contrib non-free' \
      'deb [trusted=yes] http://archive.debian.org/debian jessie-backports main contrib non-free' \
      > /etc/apt/sources.list; \
    printf '%s\n' \
      'Acquire::Check-Valid-Until "false";' \
      'Acquire::AllowInsecureRepositories "true";' \
      'Acquire::AllowDowngradeToInsecureRepositories "true";' \
      > /etc/apt/apt.conf.d/99archive-workaround; \
    apt-get update -o Acquire::Check-Valid-Until=false; \
    apt-get install -y --no-install-recommends --allow-unauthenticated git ca-certificates; \
    rm -rf /var/lib/apt/lists/*

# Install PHP extensions
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions \
    pdo \
    pdo_mysql \
    xdebug \
    @composer

# Working directory
WORKDIR /var/app
COPY . /var/app

COPY ./docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]
