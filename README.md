#Start NGINX in DOCKER
Configure seu container no arquivo configurar.conf em conf/sh/configurar.conf
 
Digite os comando a seguir na raiz do projeto!

./fmabh.sh build    ( CRIA IMAGEM PERSONALIZADA )
./fmabh.sh create   ( CRIA E INICIA CONTAINER NGINX )
./fmabh.sh bash     ( ENTRA NO TERMINAL DO CONTAINER )
./fmabh.sh stop     ( PARA O CONTAINER )
./fmabh.sh start    ( INICIA O CONTAINER JA CRIADO )
./fmabh.sh remove   ( REMOVE O CONTAINER E IMAGEM )
./fmabh.sh help     ( COMANDO PARA OBTER AJUDA NO TERMINAL )                 

Tambem podemos criar um alias temporario para facilitar!

Digite: alias fmabh=$(pwd)"/fmabh.sh"

agora podemos usar fmabh de qualquer pasta no terminal!
