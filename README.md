
# Consultas Públicas / Painel administrativo

> Área de moderação das consultas públicas 

## Setup
### Requisitos
* Nodejs 
* NPM

### Url da api de usuários
Crie o arquivo `properties.json`
``` json
{
	"apiUrlUsers":"http://localhost/apiconsultas/users/",
	"apiUrl":"http://localhost/apiconsultas"
}
```

### Setup de usuários
Crie o arquivo `php/users/users.json`
``` json
{
	"version": "1.0.0",
	"users": [
		{
			"firstname": "João",
			"lastname": "Ninguém",
			"email": "jninguem@prefeiura.sp.gov.br",
			"pass": "joao@ninguem159",
			"role": {
				"total": false,
				"projects": [
					"nome_da_consulta_no_banco_de_dados"
				] 
			}
		},
		{
			"firstname": "Maria",
			"lastname": "Ninguém",
			"email": "maria@spurbanismo.sp.gov.br",
			"pass": "maria#maria753",
			"role": {
				"total": false,
				"projects": [
					"nome_da_consulta_no_banco_de_dados_0",
					"nome_da_consulta_no_banco_de_dados_1"
				] 
			}
		},
		{
			"firstname": "Osvaldo",
			"lastname": "Aguilar",
			"email": "oaguilar@camara.sp.gov.br",
			"pass": "@guilar654osvaldo",
			"role": {
				"total": true,
				"projects": false 
			}
		}
	]
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