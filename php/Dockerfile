FROM php:8.0.9-fpm

RUN apt-get update && apt-get install -y \
    git \
    wget \
    make \
    unzip \
    zip \
    curl \
    rsync \
    inotify-tools \
    libjpeg-dev \
    libaio-dev \
    libpng-dev \
    libicu-dev \
    libpq-dev \
    libbz2-dev \
    libxml2-dev \
    libxslt-dev \
    libzip-dev \
    libxrender1 \
    xz-utils \
    apt-transport-https \
    build-essential \
    librabbitmq-dev \
    libmemcached-dev \
    libgmp-dev \
    libonig-dev \
    libmagickwand-dev \
    libmagickcore-dev

RUN docker-php-ext-install pdo_mysql pdo_pgsql zip exif pcntl
RUN docker-php-ext-configure gd
RUN docker-php-ext-install -j$(nproc) gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www

# Set working directory
WORKDIR /var/www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]