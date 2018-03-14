# aem-docker-dispatcher

build with `docker build -t aem-dispatcher .`

run with `docker run -dit --name aem-dispatcher -p 8090:80 aem-dispatcher:latest`

or if you want to override the conf dir 
`docker run -dit --name aem-dispatcher -p 8090:80 -v D:\docker\aem-dispatcher\conf:/usr/local/apache2/conf/ aem-dispatcher:latest`

to copy to 
`docker cp D:/docker/aem-dispatcher/conf/.aem-dispatcher:/usr/local/apache2/conf/.`

and from the container
`docker cp aem-dispatcher:/usr/local/apache2/conf/. D:/docker/aem-dispatcher/conf/.`

open shell `docker exec -i -t aem-dispatcher /bin/bash`
