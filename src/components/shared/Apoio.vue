<template>
	<div class="Apoio">
		<p>Lorem ipsum dolor sit amet, per in dolorem phaedrum. No nam illum torquatos, in saperet lucilius per, eum audiam sanctus expetenda eu. Duo sumo everti ne. Ne scripta lobortis vim, vel id odio deserunt, vidisse mediocrem has at. Nibh tibique adipisci ex est, tempor prodesset ea quo.</p>

		<p>Quo ad insolens adipisci forensibus. Eam ad tibique volutpat expetenda, illum senserit sententiae ei his, id mea quem facete adipiscing. Mei albucius adipisci eu, id facer tollit eum. Velit perpetua adversarium ei est, an sed vidit ullum blandit. Solet voluptaria sit ut, eu nec ornatus concludaturque, ullum vulputate ut cum. Et fastidii interesset nam, ad omittam omittantur consectetuer qui. Meis tibique denique no vim, ex porro postea labitur est, mel ex vocent fuisset.</p>

		<p>Art. X Te vim volumus democritum, has ad ferri postulant, usu in qualisque appellantur neglegentur. Erat assum rationibus ad sea, alterum dissentias pro et. Vis vide dictas facilisi at, est ne dicant impetus evertitur, etiam elitr possit eos no. Ea verterem repudiandae ius, quaestio disputando deterruisset in qui, sed aliquam salutatus ne. Ad eam sonet facete, vix exerci nullam expetendis ei.</p>

		<p>Art. X Ei usu possim contentiones, cu expetendis dissentiunt mei. Eu impedit accumsan vis. Ea bonorum corpora iracundia est, at aeterno hendrerit incorrupte vel. Cu quod mutat philosophia vim, dicat suavitate efficiantur ad sea. Alienum placerat qualisque id mea, has et tota iudico iuvaret. Ne vis volumus invidunt, sit cu minimum erroribus.</p>

		<p>Art. X Mea erat dolor periculis ex, nam ad assueverit deterruisset. Homero pertinax convenire qui in. Nam semper perpetua consequuntur ne, ut sit assum aliquid. Id scripta antiopam vix, principes voluptaria consectetuer pri ex. Aliquam facilisis dissentiunt quo ne, mei noluisse concludaturque ad, eum cu quis ferri idque.</p>

		<p>Lorem ipsum dolor sit amet, per in dolorem phaedrum. No nam illum torquatos, in saperet lucilius per, eum audiam sanctus expetenda eu. Duo sumo everti ne. Ne scripta lobortis vim, vel id odio deserunt, vidisse mediocrem has at. Nibh tibique adipisci ex est, tempor prodesset ea quo.</p>

		<p>Quo ad insolens adipisci forensibus. Eam ad tibique volutpat expetenda, illum senserit sententiae ei his, id mea quem facete adipiscing. Mei albucius adipisci eu, id facer tollit eum. Velit perpetua adversarium ei est, an sed vidit ullum blandit. Solet voluptaria sit ut, eu nec ornatus concludaturque, ullum vulputate ut cum. Et fastidii interesset nam, ad omittam omittantur consectetuer qui. Meis tibique denique no vim, ex porro postea labitur est, mel ex vocent fuisset.</p>

		<p>Te vim volumus democritum, has ad ferri postulant, usu in qualisque appellantur neglegentur. Erat assum rationibus ad sea, alterum dissentias pro et. Vis vide dictas facilisi at, est ne dicant impetus evertitur, etiam elitr possit eos no. Ea verterem repudiandae ius, quaestio disputando deterruisset in qui, sed aliquam salutatus ne. Ad eam sonet facete, vix exerci nullam expetendis ei.</p>

		<p>Ei usu possim contentiones, cu expetendis dissentiunt mei. Eu impedit accumsan vis. Ea bonorum corpora iracundia est, at aeterno hendrerit incorrupte vel. Cu quod mutat philosophia vim, dicat suavitate efficiantur ad sea. Alienum placerat qualisque id mea, has et tota iudico iuvaret. Ne vis volumus invidunt, sit cu minimum erroribus.</p>

		<p>Mea erat dolor periculis ex, nam ad assueverit deterruisset. Homero pertinax convenire qui in. Nam semper perpetua consequuntur ne, ut sit assum aliquid. Id scripta antiopam vix, principes voluptaria consectetuer pri ex. Aliquam facilisis dissentiunt quo ne, mei noluisse concludaturque ad, eum cu quis ferri idque.</p>
	</div>
</template>
<script>
	export default {
		name: 'Apoio',
	};
</script>
<style lang="scss">
@import "../../assets/variables.scss";
.Apoio {
	position: sticky;
	position: -webkit-sticky;
	float: right;
	max-height: 100vh;
	overflow: auto;
	width: 30vw;
	top: 0;
	bottom: 0;
	background-color: $primary-light-grey;
	transition: all 300ms ease-out;
	margin: 0 0 0 20px;
	padding: 2em;
}
.Apoio:active {
	width: 0;
	transform: translateX(95%);
}
</style>