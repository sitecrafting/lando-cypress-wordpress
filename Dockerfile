FROM devwithlando/php:7.2-fpm

LABEL maintainer="Coby Tamayo <ctamayo@sitecrafting.com>" license="MIT"

# Install Cypress dependencies
RUN apt-get update && \
  apt-get install -y \
    xvfb \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    gnupg2

# Install Node and Cypress
RUN curl -sLO https://deb.nodesource.com/setup_8.x && \
  bash ./setup_8.x && \
  apt-get install -y nodejs

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
  chmod +x wp-cli.phar && \
  mv wp-cli.phar /usr/local/bin/wp
