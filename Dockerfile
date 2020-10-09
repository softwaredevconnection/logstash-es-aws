FROM jswhitworth/logstash:latest
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN ./bin/logstash-plugin install logstash-output-amazon_es
ADD pipeline/ /usr/share/logstash/pipeline
ADD config/ /usr/share/logstash/config
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install