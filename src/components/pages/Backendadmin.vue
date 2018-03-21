<template>
	<div class="Backendadmin">
		<div class="container">
			<form>
				<div class="input-field col s6" v-if="!isSubmitted">
          			<input id="last_name" type="text" class="validate" v-model="fileData.nome">
          			<label for="last_name">Nome do Arquivo</label>
          			<span class="helper-text" data-error="Não adicione maiúsculas, espaços ou caracteres especiais" data-success="Nome inserido válido">Não adicione maiúsculas, espaços ou caracteres especiais</span>
          			<button class="waves-effect waves-light btn-large" type="submit" name="action" @click.prevent="submitted()">Criar novo arquivo</button>
  		 		</div>
  			</form>
          	<div id="success-msg" v-if="isSubmitted">
        		<p class="success">Arquivo criado com sucesso</p>
        		<p id="id">ID: {{ fileData.id }}</p>
        		<p id="nome">Nome do arquivo: {{ fileData.nome}}</p>
        		<p id="data">Data de criação: {{ fileData.dataHora }}</p>
				<button class="waves-effect waves-light btn-large" v-on="fileData.id" @click="copy()">Copiar ID</button>
        	</div>
		</div>
	</div>	
</template>

<script>
	export default {
		name:'Backendadmin',
		data() {
			return {
				fileData: {
					id: '00',
					nome: '',
					dataHora: null
				},
				isSubmitted: false
			}
		},
		methods: {
			submitted() {
				this.isSubmitted = true;
				const date = new Date (); 
				let dia = date.getDate();
				let mes = date.getMonth();
				let ano = date.getFullYear();
				let hora = date.getHours();
				let min = date.getMinutes();
				this.fileData.dataHora = dia +'/'+ mes + '/' + ano + ' às ' + hora+':'+min; 

			},
			copy(){
				this.fileData.id.execCommand ("Copy");
			}
		}
	}

</script>

<style lang="scss" scoped>
@import "../../assets/variables.scss";

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-right: -50%;
	transform: translate(-50%, -50%);
}

#success-msg {
	top: 50%;
	line-height: 0.5em;
}

#success-msg button {
	background-color: #828282;
	margin-top: 2em;
	margin-left: 0;

}
.success {
	font-weight: bold;
}

.btn-large {
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 5em;
	background-color: #333;

}



</style>