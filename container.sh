set -e

docker run -d --name web nginx:alpine
docker exec web ls /usr/share/nginx/html
docker logs web

docker run -d --name tokjContainer nginx:alpine

