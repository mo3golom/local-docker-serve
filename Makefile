up:
	@docker-compose up -d;

down:
	@docker-compose stop;

restart:
	@make -s down;
	@make -s up;