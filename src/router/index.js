import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
// import Admin from '@/components/pages/admin/Admin'
import Main from '@/components/pages/Main'

// import Anexo from '@/components/pages/Anexo'

Vue.use(Router);

const router = new Router({
	routes: [
		{
			path: '/',
			name: 'Main',
			components: {
				header: Header,
				main: Main,
				footer: Footer
			}
		},
		// {
		// 	path: '/capelinha',
		// 	name: 'Capelinha',
		// 	components: {
		// 		header: Header,
		// 		main: Capelinha,
		// 		footer: Footer
		// 	}
		// },
		// {
		// 	path: '/campo-limpo',
		// 	name: 'Campo Limpo',
		// 	components: {
		// 		header: Header,
		// 		main: CampoLimpo,
		// 		footer: Footer
		// 	}
		// },
		// {
		// 	path: '/princesa-isabel',
		// 	name: 'Princesa Isabel',
		// 	components: {
		// 		header: Header,
		// 		main: PrincesaIsabel,
		// 		footer: Footer
		// 	}
		// },
		// {
		// 	path: '/admin', 
		// 	components: {
		// 		header: Header,
		// 		main: Admin,
		// 	} 
		// }
	]
})

export default router;