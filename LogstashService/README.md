1. docker build -t <tagName>
2. docker run --name <nameContainer> <docker image tag name>

## Config 
Need to make changes to p1.conf to match with your servers setup and where the server is reciving syslog messages. 
https://www.elastic.co/guide/en/logstash/current/docker.html


See https://www.elastic.co/guide/en/logstash/current/plugins-outputs-kafka.html for info on configurations for security. 
# To exit ctl + c


## RHEL 8 Instructions 
# Note use podmand for managing container. 
# Note editing the docler file to use the p2.conf is a good starting place to make sure that the logstash image is working. 

cd into root directory for logstash
podman build --tag log1:1.0 -f ./dockerfile
podman run --rm -it localhost/log1:1.0
