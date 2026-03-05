CD = cd srcs

MKDIR = mkdir -p srcs/requirements/wordpress_data/wordpress_data

NAME = inception

$(NAME):
	$(MKDIR)
	$(CD) && docker compose up --build

up: $(NAME)

down:
	docker run --rm -v "$$PWD:/app" -w /app alpine sh -c "rm -rf srcs/requirements/wordpress_data"
	docker system prune -f
	$(CD) && docker compose down

re: down up