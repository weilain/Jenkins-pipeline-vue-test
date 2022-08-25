FROM harbor.k8s.com/k8s/nginx:1.22.1
COPY nginx.conf /etc/nginx/conf.d/app.conf
COPY ./dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/app.conf-bak
