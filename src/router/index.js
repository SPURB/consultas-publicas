import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
// import Admin from '@/components/pages/admin/Admin'
import Introducao from '@/components/pages/Introducao'
import Capelinha from '@/components/pages/Capelinha'
import CampoLimpo from '@/components/pages/CampoLimpo'
import PrincesaIsabel from '@/components/pages/PrincesaIsabel'

import Ael from '@/components/pages/galeries/Ael'

Vue.use(Router);

const router = new Router({
	routes: [
		{
			path: '/',
			name: 'Introdução',
			components: {
				header: Header,
				main: Introducao,
				footer: Footer
			}
		},
		{
			path: '/capelinha',
			name: 'Capelinha',
			components: {
				header: Header,
				main: Capelinha,
				footer: Footer
			}
		},
		{
			path: '/campo-limpo',
			name: 'Campo Limpo',
			components: {
				header: Header,
				main: CampoLimpo,
				footer: Footer
			}
		},
		{
			path: '/princesa-isabel',
			name: 'Princesa Isabel',
			components: {
				header: Header,
				main: PrincesaIsabel,
				footer: Footer
			}
		},

		{
			path: '/ael',
			name: 'Ael',
			components: {
				header: Header,
				main: Ael,
				footer: Footer
			}
		},

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