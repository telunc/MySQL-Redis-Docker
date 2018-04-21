mkdir -p data
docker run \
	--restart on-failure \
	--name mysql-server \
	-p 3306:3306 \
	-v "$(pwd)"/data:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=password \
	-e MYSQL_DATABASE=database \
	-d mysql:5.7 