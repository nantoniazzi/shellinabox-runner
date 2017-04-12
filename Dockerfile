FROM debian

RUN apt-get update
RUN apt-get -y install shellinabox vim htop bash-completion apache2
RUN a2enmod dump_io proxy proxy_connect proxy_html proxy_http proxy_wstunnel xml2enc

RUN cd /etc/shellinabox/options-enabled \
 && rm "00_White On Black.css" \
 && rm "00+Black on White.css"

RUN cd /etc/shellinabox/options-available \
 && mv "00_White On Black.css" "00+White On Black.css" \
 && mv "00+Black on White.css" "00_Black on White.css"

RUN cd /etc/shellinabox/options-enabled \
 && ln -s "../options-available/00+White On Black.css" \
 && ln -s "../options-available/00_Black on White.css"

COPY shellinabox.config /etc/default/shellinabox
COPY entrypoint.sh /entrypoint.sh
COPY .bashrc /root/.bashrc
COPY apache2-000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY dumpio.conf /etc/apache2/conf-enabled/dumpio.conf

ENTRYPOINT ["/entrypoint.sh"]
