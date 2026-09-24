set -e

docker run -d --name web nginx:alpine
docker exec web ls /usr/share/nginx/html
docker logs web

docker run -d --name tokjContainer nginx:alpine

docker stop web
docker rm web

docker stop tokjContainer
docker rm tokjContainer
