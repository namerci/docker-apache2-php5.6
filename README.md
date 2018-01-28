# namerci/apache2

This repo used in Dockerhub url 'https://hub.docker.com/r/namerci/apache2/'

## Module install in images
* gd
* iconv
* mcrypt
* intl
* mysql
* mysqli
* pdo_mysql
* zip
* mbstring
* mod_rewrite
* xsl

## External extension
* Memcached
* Composer
* OpenSSL
* Imagick

## Volume
* /var/www
* /var/log/apache2
* /etc/apache2/sites-enabled

## Port
* 80
* 443

## How to use with Docker
```
docker run --name testphp -p 8080:80 -d -v $(pwd):/var/www/html namerci/apache2
```
## Use with Docker-compose 
```
  apache:
    image: namerci/apache2
    container_name: apache
    ports:
      - "80:80"
    volumes:
      - ./apache2/conf:/etc/apache2/sites-enabled
      - ./apache2/www:/var/www
      - ./apache2/logs:/var/log/apache2
    environment:
      - TZ=Europe/Warsaw
    restart: always
```
