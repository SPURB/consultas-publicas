import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
const Introducao = () => import('@/components/pages/Introducao') //load asíncrono
const Capelinha = () => import('@/components/pages/Capelinha')
const PrincesaIsabel = () => import('@/components/pages/PrincesaIsabel')
const CampoLimpo = () => import('@/components/pages/CampoLimpo')


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