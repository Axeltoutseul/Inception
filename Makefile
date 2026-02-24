CD = cd srcs

MKDIR = mkdir -p srcs/requirements/wordpress_data

NAME = inception

$(NAME):
	$(MKDIR)
	$(CD) && docker compose up

up: $(NAME)

down:
	docker run --rm -v "$$PWD:/app" -w /app alpine sh -c "rm -rf srcs/wordpress srcs/nginx"
	docker system prune -f
	$(CD) && docker compose down
