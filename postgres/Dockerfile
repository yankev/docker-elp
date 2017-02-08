FROM postgres:9.5.4

ADD init_db.sh /docker-entrypoint-initdb.d/
COPY *.sql /var/initdb_scripts/

EXPOSE 5432
CMD ["postgres"]
