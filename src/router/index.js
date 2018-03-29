import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
import Admin from '@/components/pages/admin/Admin'
import Consulta from '@/components/pages/Consulta'
import Anexo from '@/components/pages/Anexo'

Vue.use(Router);

const router = new Router({
	routes: [
		{
			path: '/',
			redirect:'/consulta'
		},
		{
			path: '/consulta',
			name: 'Consulta',
			components: {
				header: Header,
				main: Consulta,
				footer: Footer
			}
		},
		{
			path: '/anexo',
			name: 'Anexo 1',
			components: {
				header: Header,
				main: Anexo,
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