FROM logstash:7.9.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN ./bin/logstash-plugin install logstash-output-amazon_es
ADD pipeline/ /usr/share/logstash/pipeline
ADD config/ /usr/share/logstash/config