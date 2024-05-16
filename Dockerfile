FROM dunglas/frankenphp:1-php8.3

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
	acl \
	file \
	gettext \
	git \
	;

RUN set -eux; \
	install-php-extensions \
    	@composer \
		intl \
		opcache \
		zip \
        pdo \
        pdo_pgsql \
        pdo_mysql \
        pdo_sqlite \
    	gd \
		imagick \
		apcu \
		intl \
    	redis \
	;
