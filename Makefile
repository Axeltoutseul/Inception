CD = cd srcs

MKDIR = mkdir -p /home/axbaudri/data && mkdir -p /home/axbaudri/data/mariadb /home/axbaudri/data/wordpress

NAME = inception

$(NAME):
	$(MKDIR)
	$(CD) && docker compose up --build -d

up: $(NAME)

log:
	$(CD) && docker compose logs

down:
	$(CD) && docker compose down --volumes
	docker system prune -a

re: down up