## PIU Terminais
> Consulta pública do Projeto de Intervenção Urbana dos Terminais de ônibus municipais de São Paulo


## Pré-requisitos
* Node
* Gulp
* Servidor Apache com MySQL


## Montar
* Clonar este repositório.
* No seu servidor criar banco MySQL com o arquivo sql exemplo ``DB_exemplo.sql``
* Altere a linha 3 e 4 arquivo api/index.php referente às informações do seu DB
``
// include "dbinfo.php"; //exclua ou comente esta linha
$connection = new mysqli($db_host, $db_user, $db_pass, $db_name); // substitua as variáveis pelas informações do seu banco

``

# Instalar dependências
``
# npm install 

``


## Desenvolver
> Na pasta do projeto
> Monta front-end do projeto em localhost:3000
``
# gulp watch

``


## Publicar
> Preparar arquivos arquivos para produção
``
#gulp useref

``

> Os arquivos a serem publicados são ``/dist`` e ``/api``


## Licença
> MIT
