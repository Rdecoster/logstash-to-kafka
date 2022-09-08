# logstash-to-kafka

Run docker build . 
get new docker image name and run it 
docker run -it --rm <image_name>



##Centos 

#Docker 

 sudo yum install -y yum-utils
 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo


     sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin


     sudo systemctl start docker


     ## install git 

     sudo dnf update -y && sudo dnf install git -y

