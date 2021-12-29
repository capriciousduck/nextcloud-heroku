FROM nextcloud
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
RUN a2dismod mpm_prefork
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD ["apachectl", "-D", "FOREGROUND"]
