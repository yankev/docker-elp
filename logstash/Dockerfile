FROM logstash

RUN apt-get update && apt-get install -y  postgresql-client

COPY ./config/logstash.conf /config-dir/
COPY ./wait-for-pg.sh /config-dir/

RUN ls /config-dir
RUN chmod u+x /config-dir/wait-for-pg.sh
CMD ["/config-dir/wait-for-pg.sh", "postgres", "logstash", "-f", "/config-dir/logstash.conf"]