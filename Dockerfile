# Використовуємо офіційний образ Nginx з Docker Hub як базовий образ nginx
FROM nginx:latest
RUN apt-get update && apt-get install -y procps

# Копіюємо наш файл конфігурації Nginx в контейнер
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копіюємо файли для відображення статусів помилок
COPY 403.html /usr/share/nginx/html/403.html

# Міняемо permision для відображення статусів помилок
RUN chmod 333 /usr/share/nginx/html/403.html
