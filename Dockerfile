FROM elasticsearch:latest

RUN bin/plugin install cloud-aws

EXPOSE 9200:9200
EXPOSE 9300:9300

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["elasticsearch"]
