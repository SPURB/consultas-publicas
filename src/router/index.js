import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
// import Progressbar from '@/components/shared/Progressbar'
import Modalcomponent from '@/components/shared/Modalcomponent'
import Comments from '@/components/shared/Comments'
// import Footernav from '@/components/shared/Footernav'

// pages
import Admin from '@/components/pages/admin/Admin'
import Consulta from '@/components/pages/Consulta'
import Mapas from '@/components/pages/Mapas'
import Quadros from '@/components/pages/Quadros'


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
				// progressbar: Progressbar,
				default: Consulta,
				modalcomponent: Modalcomponent,
				// footernav: Footernav
			},
			meta: { 
				postid: 1,
			}
		},
		{
			path: '/mapas',
			name: 'Mapas',
			components: {
				header: Header,
				// progressbar: Progressbar,
				default: Mapas,
				modalcomponent: Modalcomponent,
				// footernav: Footernav
			},
			meta: { 
				postid: 2,
			}
		},
		{
			path: '/quadros',
			name: 'Quadros',
			components: {
				header: Header,
				// progressbar: Progressbar,
				default: Quadros,
				modalcomponent: Modalcomponent,
				// footernav: Footernav
			}, 
			meta: { 
				postid: 3,
			}
		},
		{
			path: '/admin', 
			components: {
				header: Header,
				default: Admin,
			} 
		}
	]
})

export default router;