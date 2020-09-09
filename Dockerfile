FROM nextcloud
COPY heroku-entrypoint.sh /heroku-entrypoint.sh
ENTRYPOINT ["/heroku-entrypoint.sh"]
CMD a2dismod worker && apache2-foreground
