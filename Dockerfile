FROM anvibo/baseimage:18.04

RUN install-clean php-fpm

RUN mkdir /run/php

RUN sed -i 's/.*listen = .*/listen = 127.0.0.1:9000/g' /etc/php/7.2/fpm/pool.d/www.conf

CMD ["/usr/sbin/php-fpm7.2", "-F"]