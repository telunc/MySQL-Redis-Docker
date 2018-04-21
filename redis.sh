cd redis
docker build -t redis-docker .
docker run \
    --restart on-failure \
    --name redis-server \
    -p 6379:6379 \
    -v "$(pwd)"/../data:/data \
    -d redis-docker