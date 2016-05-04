docker run --name tgisispujdb \
	-v /var/tgisispuj:/var/lib/mysql \
	-p 3306:3306 \
	-e MYSQL_USER=root \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_DATABASE=tgisispuj \
    -d mysql:5.7
docker build -t tgisispuj ./Django
docker run --name tgisispuj \
	-p 80:8000 \
	--link tgisispujdb:tgisispujdb \
	-d tgisispuj
docker exec -ti tgisispuj python manage.py makemigrations
docker exec -ti tgisispuj python manage.py migrate
