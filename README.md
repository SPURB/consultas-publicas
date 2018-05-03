
# Consultas Públicas / Painel administrativo

> Área de moderação das consultas públicas 

## Setup
### Requisitos
* Nodejs 
* NPM

### Setup de usuários
Antes de iniciar este projeto será necessário criar os arquivos:  
* `/static/users.json`
* `/static/pass.json` 

Exemplo:

``` javascript
# /static/users.json
{
	"version": "0.0.1",
	"about": "Users admin consultas",
	"data": [
		{
			"firstname": "José",
			"lastname": "Ninguém",
			"email": "jninguem@falso.com",
			"role": {
				"total": false,
				"projects": [
					"nome_do_banco_projeto_1",
					"nome_do_banco_projeto_2"
				] 
			}
		},
		{
			"firstname": "Maria",
			"lastname": "Ninguém",
			"email": "mninguem@falso.com",
			"role": {
				"total": true,
				"projects": false 
			}
		}
	]
}

# /static/pass.json
{
	"jninguem@falso.com":"pass_jose_123456",
	"mninguem@falso.com":"pass_maria_123456"
}
```

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