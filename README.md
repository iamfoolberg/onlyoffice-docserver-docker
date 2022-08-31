# onlyoffice-docserver-docker
onlyoffice document server docker, for docker swarm customize.


#1.prepare Dockerfile and startup.sh, change run-document-server.sh
git clone https://github.com/iamfoolberg/onlyoffice-docserver-docker.git
cd onlyoffice-docserver-docker
#build the docker, e.g.
docker build -t berg/documentserver:latest .

#run it. ofcource, it will fail.
#1.1 change the startup.sh in volume ood-lib/_data/
#1.2 generate and add your ssl keys in volume ood-data/_data/certs/
#1.3 prepare the app.js files in volume ood-lib/_data/
#the startup.sh will be executed when the container start,
#and do lines in it.

docker run -itd \
        --name onlyoffice --network mydockernet --restart=always \
        -p 8084:443 \
        -v ood-logs:/var/log/onlyoffice \
        -v ood-data:/var/www/onlyoffice/Data \
        -v ood-lib:/var/lib/onlyoffice \
        -v ood-db:/var/lib/postgresql \
        -v ood-fonts:/usr/share/fonts/truetype/custom \
berg/documentserver:latest

#config the startup.sh or prepare files it required.
