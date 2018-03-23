<template>
	<div class="Backendadmin">
		<div class="container">
			<form novalidate="true">
				<div class="input-field col s6" v-if="!isSubmitted">
          			<input id="last_name" type="text" v-bind:class="{validate : isActive, 'invalid' : hasError} " v-model="nome">
          			<label for="last_name">Nome do Arquivo</label>
          			<span id="arquivo" class="helper-text" data-error="Adicione um nome válido" data-success="Nome inserido válido">Não adicione maiúsculas, espaços ou caracteres especiais</span>
          			<button class="waves-effect waves-light btn-large" type="submit" name="action" @click.prevent="submitted()">Criar novo arquivo</button>
  		 		</div>
  			</form>
          	<div id="success-msg" v-if="isSubmitted">
        		<p class="success">Arquivo criado com sucesso</p>
        		<p id="id">ID: {{ id }}</p>
        		<p id="nome">Nome do arquivo: {{ nome }}</p>
        		<p id="data">Data de criação: {{ dataHora }}</p>
				<button class="waves-effect waves-light btn-large" v-clipboard:copy="id" v-clipboard:success="onCopy" v-clipboard:error="onError">Copiar ID</button>
        	</div>
		</div>
	</div>	
</template>

<script>
	export default {
		name:'Backendadmin',
		data() {
			return {
				id: '00',
				nome: '',
				dataHora: null,
				isSubmitted: false,
				isActive: true,
				hasError: false
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
				this.dataHora = dia +'/'+ mes + '/' + ano + ' às ' + hora+':'+min; 
			},
			onCopy: function (event) {
				alert('Número do Id copiado com sucesso')
			},
			onError: function (event) {
				alert('Não foi possível copiar o valor de ID')
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
	margin: auto;
	line-height: 0.5em;
	text-align: center;
}

#success-msg button {
	background-color: #828282;
	margin-top: 2em;


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