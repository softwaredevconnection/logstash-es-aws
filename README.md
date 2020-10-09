# logstash-es-aws

Build:
docker build -t jswhitworth/logstash-es-aws .

Interactive Session:
<!-- docker exec -it jswhitworth/logstash-es-aws /bin/bash
docker run --name test_logstash -rm -i -t jswhitworth/logstash-es-aws bash -->
docker container run -u 0 -it jswhitworth/logstash-es-aws /bin/bash

docker login --username=jswhitworth --email=jswhitworth@gmail.com

docker tag 69e7734b0e6f jswhitworth/logstash-es-aws:latest
docker push jswhitworth/logstash-es-aws

docker build -t jswhitworth/logstash-es-aws . && docker push jswhitworth/logstash-es-aws
docker build -t jswhitworth/logstash . && docker push jswhitworth/logstash