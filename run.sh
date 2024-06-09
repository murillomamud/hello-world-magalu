#!/bin/bash

# Navegar para pasta app
cd app

# Nome da imagem Docker
IMAGE_NAME="hello-world-magalu"

# Construa a imagem Docker
docker build -t $IMAGE_NAME .

# Execute o contêiner Docker
docker run -p 80:80 $IMAGE_NAME