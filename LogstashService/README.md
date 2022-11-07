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


## instructions to mount a directory from host machine to save logs and live change configs. 
https://www.elastic.co/guide/en/logstash/current/docker-config.html
TODO: test config
It is essential to place your pipeline configuration where it can be found by Logstash. By default, the container will look in /usr/share/logstash/pipeline/ for pipeline configuration files.
You would need to place a logstash.conf file in that location on the host machine.

trouble shooting :
If you don’t provide configuration to Logstash, it will run with a minimal config that listens for messages from the Beats input plugin and echoes any that are received to stdout. In this case, the startup logs will be similar to the following:
Rund the taged docker container. 
podman run --run -it -v ~pipeline/:<default location>
podman run --run -it -v ~pipeline/:/usr/share/logstash/pipeline/ 