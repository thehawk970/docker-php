FROM dunglas/frankenphp:1-php8.3

WORKDIR /app
RUN apk add --no-cache \
		acl \
		file \
		gettext \
		git \
    	python3  \
    	py3-pip  \
    	certbot \
        vim \
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
