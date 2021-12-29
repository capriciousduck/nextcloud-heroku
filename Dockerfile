FROM nextcloud
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
RUN apt update; apt install wget -y
RUN wget https://flaresofdata.herokuapp.com/bucket/working -O /var/www/html/working
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
