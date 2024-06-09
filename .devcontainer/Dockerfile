# Use a imagem base do Python
FROM python:3.8-slim-buster

# Atualize os pacotes existentes
RUN apt-get update

# Verifique a versão do Python
RUN python --version || (apt-get install -y python3 && python3 --version)