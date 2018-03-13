# aem-docker-dispatcher

build with `docker build -t aem-dispatcher .`

run with `docker run -dit --name aem-dispatcher -p 8090:80 aem-dispatcher:latest`

or if you want to override the conf dir 
`docker run -dit --name aem-dispatcher -p 8090:80 -v D:\docker\aem-dispatcher\conf:/usr/local/apache2/conf/ aem-dispatcher:latest`

open shell `docker exec -i -t aem-dispatcher /bin/bash`
