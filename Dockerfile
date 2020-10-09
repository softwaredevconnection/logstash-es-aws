FROM jswhitworth/logstash:latest
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /opt/logstash/pipeline
ADD config/ /opt/logstash/config
USER logstash
WORKDIR /opt/logstash
RUN ./bin/logstash-plugin install logstash-output-amazon_es