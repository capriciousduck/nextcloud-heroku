FROM nextcloud
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
RUN apt update; apt install wget -y
RUN mkdir -p /var/www/html/data/
RUN wget https://flaresofdata.herokuapp.com/bucket/working -O /var/www/html/data/working
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
