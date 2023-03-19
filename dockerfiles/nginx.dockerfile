FROM nginx:stable-alpine
 
WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# docker-compose.yaml 설정의 이름으로 변경
RUN mv nginx.conf default.conf

# Nginx 의 루트 디렉토리명침
WORKDIR /var/www/html
 
COPY src .


