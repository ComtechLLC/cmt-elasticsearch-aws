FROM elasticsearch:latest

RUN bin/plugin install cloud-aws
RUN ulimit -n 65536

EXPOSE 9200:9200
EXPOSE 9300:9300
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["elasticsearch"]
