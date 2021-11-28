#Autor Felipe M A B Huinka

echo "
========== Servidor Nginx ==========
"
source conf/sh/configurar.conf

if [ "$#" -ne 0 ]
then

if [ $IMAGE_TAG ]
then
    IMAGE_REPO=$IMAGE_REPO":"$IMAGE_TAG
fi

if [ $1 == 'create' ]
then
    docker run -it -d --name $CONTAINER_NAME -p 3030:80 -v $(pwd)"/app/html:/var/www/html" -v $(pwd)"/conf/nginx/default.conf:/etc/nginx/conf.d/default.conf" $IMAGE_REPO
    docker exec $CONTAINER_NAME nginx -s reload
fi

if [ $1 == 'build' ]
then
    docker build -f dockerfile/nginx.Dockerfile  -t $IMAGE_REPO .
fi

if [ $1 == 'stop' ]
then
    echo " -> Desativando container ..."
    docker stop $CONTAINER_NAME
fi

if [ $1 == 'remove' ]
then
    echo " -> Removendo container e imagem ..."
    docker rm -f $CONTAINER_NAME
    docker image rm $IMAGE_REPO
fi

if [ $1 == 'start' ]
then
    docker start -i $CONTAINER_NAME
fi

if [ $1 == 'bash' ]
then
    echo " -> Voce esta no terminal do container: " $CONTAINER_NAME
    docker exec -it $CONTAINER_NAME /bin/bash
    echo " -> Voce saiu do terminal do container"
fi

if [ $1 == 'help' ]
then
    echo "
  --> AJUDA 

    Comandos        Descrições

    build       : Use build para gerar uma image DOCKER da ultima versao NGINX
    start       : Use star para iniciar o container
    bash        : Use bash para acessar o terminal interno do container
    stop        : Use stop para parar o container

    
    "
fi

else

    echo "Consulte a Ajuda! exemplo: fmabh.sh help
    "

fi