#CakePHP/Docker

Modo de usar

##Windows

Instale o Docker for Windows (https://docs.docker.com/docker-for-windows/install/)

Após a instalação, utilizando os containers do tipo "linux", inicie o SWARM.

> docker swarm init

Após isto basta iniciar o serviço:

> docker stack deploy -c service.yml

Para facilitar, execute este comando direto da pasta CakePHP, assim a hierarquia de diretórios não irá falhar.

A cofiguração de pastas e arquivos está assim:

-> App: Pasta da aplicação.
-> Mysql: Arquivo de configuração do Mysql (mariadb). Sem nenhuma configuração por enquanto.
-> nginx: Arquivo de configuração do nginx.
-> php-fpm: Dockerfile do container que rodará o PHP.
-> service.yml: Arquivo de criação do serviço;

O arquivo service.yml está utilizando imagens vindas do DockerHub. É possivel rebuildar todas as imagens. Inclusive, a do PHP-FPM ja está com a sua dockerfile aqui.

Quando for executar, confirme as credenciais do banco de dados!

Acesso:
http://localhost --> Aplicação
http://localhost:8080 --> Admin do banco