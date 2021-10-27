all :
	docker-compose up --build

stop :
	docker-compose stop

clean :
	docker-compose rm
