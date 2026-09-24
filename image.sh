set -e

docker build -t minside .
docker run -d --name site -p 8080:8000 minside
sleep 2 && curl -f localhost:8080
docker rm -f site

docker run -d --name site -p 9090:8000 minside
sleep 2 && curl -f localhost:9090
docker rm -f site
