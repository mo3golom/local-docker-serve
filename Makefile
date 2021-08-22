up:
	@docker-compose up -d;

down:
	@docker-compose stop;

restart:
	@make -s down;
	@make -s up;

exec:
	@docker exec -it mo3-apps bash;
