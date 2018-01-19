import Vue from 'vue'
import Router from 'vue-router'

// shared
import Header from '@/components/shared/Header'
import Progressbar from '@/components/shared/Progressbar'
import Footer from '@/components/shared/Footer'

// pages
import Admin from '@/components/pages/Admin'
import Capitulo_1 from '@/components/pages/Capitulo_1'
import Capitulo_2 from '@/components/pages/Capitulo_2'
import Capitulo_3 from '@/components/pages/Capitulo_3'


Vue.use(Router)

const router = new Router({
  routes: [
    {
      path: '/',
      redirect:'/1'      
    },
    {
      path: '/1',
      name: 'Capitulo 1',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_1,
        footer: Footer
      },
      meta: { 
        postid: 1,
      }
    },
    {
      path: '/2',
      name: 'Capitulo 2',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_2,
        footer: Footer
      },
      meta: { 
        postid: 2,
      }
    },
    {
      path: '/3',
      name: 'Capitulo 3',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_3,
        footer: Footer
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