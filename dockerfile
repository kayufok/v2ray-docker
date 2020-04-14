FROM v2ray/official:latest

# Copy v2ray config file to /etc/nginx/conf.d/default.conf
COPY config.json /etc/v2ray/config.json

# Enable new v2ray config file
#CMD ["v2ray", "-config=/etc/v2ray/config.json"]