import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
import Admin from '@/components/pages/admin/Admin'
import Consulta from '@/components/pages/Consulta'

//teste
import Comments from '@/components/shared/Comments'

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
			},
			meta: { 
				postid: 1,
			}
		},
		{
			path: '/teste',
			name: 'teste',
			components: {
				header: Header,
				main: Comments,
				footer: Footer
			},
			meta: { 
				postid: 2,
			}
		},
		{
			path: '/admin', 
			components: {
				header: Header,
				main: Admin,
			} 
		}
	]
})

export default router;