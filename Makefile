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

clean: down
	docker system prune -af

fclean: clean
	sudo rm -rf /home/axbaudri/data

re: fclean up