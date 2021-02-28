FROM php:7.3-fpm-stretch

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
    libmagickwand-dev \
    libmagickcore-dev

RUN docker-php-ext-install pdo_mysql pdo_pgsql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd

# Set working directory
WORKDIR /var/www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]