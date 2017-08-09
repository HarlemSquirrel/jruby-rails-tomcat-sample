CURRENT_DATE=`date +%Y-%m-%d`

container: build server

build:
	warble war
	docker-compose build app

server:
	docker-compose up -d app
	docker-compose exec app tail -f "/usr/local/tomcat/logs/localhost.${CURRENT_DATE}.log"
