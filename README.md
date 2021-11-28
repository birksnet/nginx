#Start NGINX in DOCKER
 Configure seu container no arquivo configurar.conf em conf/sh/configurar.conf
 
Digite os comando a seguir na raiz do projeto!

para criar uma imagem:                  ./fmabh.sh build
para criar e iniciar o container:       ./fmabh.sh create
para entrar no terminal do container:   ./fmabh.sh bash
para para o container                   ./fmabh.sh stop
para iniciar o conteiner ja criado:     ./fmabh.sh start
para remover o container e a imagem:    ./fmabh.sh remove
para AJUDA                              ./fmabh.sh help

Tambem podemos criar um alias temporario para facilitar!

Digite: alias fmabh=$(pwd)"/fmabh.sh"

agora podemos usar fmabh de qualquer pasta no terminal!
