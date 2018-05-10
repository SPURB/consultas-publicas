import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Footer from '@/components/shared/Footer'

// pages
import Admin from '@/components/pages/Admin'

Vue.use(Router);

const router = new Router({
	routes: [
		{
			path: '/', 
			components: {
				// header: Header,
				main: Admin,
				// header: Footer,
			} 
		}
	]
})

export default router;