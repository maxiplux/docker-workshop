FROM dockette/wheezy

RUN apt-get update && apt-get install -y apt-transport-https --force-yes \
    lsb-release \
    ca-certificates \
    wget \
    vim \
    nano \
    curl \
    apache2 \
    php5 \
    libapache2-mod-php5 \    
    git \    
    php5-cli \   
    php5-curl \  
    php5-gd \
    php5-common \
    php5-dev \
    php5-mcrypt \
    php-pear \
    php-apc \
    php5-xsl \
    php5-xdebug \
    php5-mysql \
    php5-gd \
    php5-dev \ 
    php5-mcrypt

ENV LOCALTIME America/Bogota

RUN apt-get -y --purge autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 

COPY build/apache2/vhosts/docker-compose.local.conf /etc/apache2/sites-available/
COPY build/php5/20-xdebug.ini /etc/php5/conf.d/20-xdebug.ini

RUN a2ensite docker-compose.local.conf

RUN a2enmod rewrite
CMD /usr/sbin/apache2ctl -D FOREGROUND

WORKDIR /var/www/html

EXPOSE 80