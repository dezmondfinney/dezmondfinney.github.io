docker ps -aq | xargs docker stop | xargs docker rm
docker build -t my-static-site .
docker run -d -p 80:80 my-static-site
