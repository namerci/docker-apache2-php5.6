FROM porchn/php5.6-apache

# RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y update \
    && apt-get install -y --no-install-recommends \
    libxslt1.1 \
    libxslt1-dev \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*


# Install Extension xsl
RUN docker-php-ext-install xsl