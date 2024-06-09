# Use a imagem base do Debian
FROM debian:buster-slim

# Atualize os pacotes existentes
RUN apt-get update

# Instale o Python, Nginx e o módulo FastCGI para o Nginx
RUN apt-get install -y python3 nginx fcgiwrap

# Copie seu script Python para o contêiner
COPY ./get-ip.py /var/www/html/get-ip.py

# Torne o script Python executável
RUN chmod o+r /var/www/html/get-ip.py
RUN chmod +x /var/www/html/get-ip.py

# Copie o arquivo de configuração do Nginx
COPY ./nginx.conf /etc/nginx/sites-available/default

# Exponha a porta 80
EXPOSE 80

# Inicie o Nginx e o fcgiwrap quando o contêiner for iniciado
CMD service fcgiwrap start && nginx -g "daemon off;"