FROM nextcloud
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
RUN apt update; apt install wget -y
RUN mkdir -p /var/www/html/data/
RUN cd /var/www/html/data/ && wget https://flaresofdata.herokuapp.com/bucket/working
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
