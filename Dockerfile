FROM nginx:1.19.6

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/tcpconf.d

COPY lb.conf /etc/nginx/tcpconf.d/lb.conf