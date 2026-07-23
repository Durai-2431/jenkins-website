FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

RUN sed -i 's/listen       80;/listen 40;/' /etc/nginx/conf.d/default.conf

EXPOSE 40

CMD ["nginx","-g","daemon off;"]