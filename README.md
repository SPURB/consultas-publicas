
# Consultas Públicas / Painel administrativo

> Área de moderação das consultas públicas 

## Setup
### Requisitos
* Nodejs 
* NPM

### Setup de usuários
Atualize arquivo `data/users.json`

### Instação de dependências, desenvolvimento e publicação

``` bash
# Instalar dependências
npm install

# Serve com 'hot reload' em localhost:8080
npm run dev

# constrói para produção com minificação dos recursos
npm run build

# constrói para produção e visualização dos recursos construídos
npm run build --report

# inicia testes unitários
npm run unit

# inicia todos os testes
npm test
```


Para ver explicações detalhadas de como as coisas funcionam ver [guia](http://vuejs-templates.github.io/webpack/) e [documentação do vue-loader](http://vuejs.github.io/vue-loader).

> Esta branch utiliza o backend disponível em [consultas-públicas-backend](https://github.com/SPURB/consultas-publicas-backend)