import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
// import Progressbar from '@/components/shared/Progressbar'
import Modalcomponent from '@/components/shared/Modalcomponent'
import Comments from '@/components/shared/Comments'
// import Footernav from '@/components/shared/Footernav'
import Mainfooter from '@/components/shared/Mainfooter'


// pages
import Admin from '@/components/pages/admin/Admin'
import Consulta from '@/components/pages/Consulta'
import Anexo1 from '@/components/pages/Anexo1'
import Anexo2 from '@/components/pages/Anexo2'


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
				// footernav: Footernav,
				mainfooter: Mainfooter
			},
			meta: { 
				postid: 1,
			}
		},
		{
			path: '/anexo1',
			name: 'Anexo 1',
			components: {
				header: Header,
				// progressbar: Progressbar,
				default: Anexo1,
				modalcomponent: Modalcomponent,
				// footernav: Footernav,
				mainfooter: Mainfooter
			},
			meta: { 
				postid: 2,
			}
		},
		{
			path: '/anexo2',
			name: 'Anexo 2',
			components: {
				header: Header,
				// progressbar: Progressbar,
				default: Anexo2,
				modalcomponent: Modalcomponent,
				// footernav: Footernav,
				mainfooter: Mainfooter
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
				mainfooter: Mainfooter
			} 
		}
	]
})

export default router;