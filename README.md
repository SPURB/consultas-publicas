# Consultas Públicas / PIU Arco Jurubatuba

> Código de http://minuta.gestaourbana.prefeitura.sp.gov.br/pl-arco-jurubatuba/
> Consulta pública do projeto de intervenção urbana do Arco Jurubatuba

## Setup de frontend

``` bash
# Instalar dependências
npm install

# Serve com 'hot reload' em localhost:8080
npm run dev

# constrói para produção com minificação dos recursos
npm run build

# constrói para produção e visualização dos recursos construídos
npm run build --report

# inicia teste unitários
npm run unit

# inicia todos os testes
npm test
```

Para ver explicações detalhadas de como as coisas funcionam ver [guia](http://vuejs-templates.github.io/webpack/) e [documentação do vue-loader](http://vuejs.github.io/vue-loader).

## Setup de backend
### Requisitos
* MySQL
* Apache
* PHP 5.6
> A estrutura do banco está em `backend/acj.sql`. É necessário montar o banco antes localmente para montar todas as funcionalidade deste projeto.
> Alterar `backend/consultas.php` nas linhas 1, 2 e 88 a 94 incluindo as informações do seu banco de dados.
> Após o setup do banco rodar o comando `npm run build` na raiz do projeto e juntar os arquivo de `/dist` com o arquivo `consultas.php` no diretório do projeto. 