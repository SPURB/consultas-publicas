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

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Capitulo_1',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_1,
        footer: Footer
      }
    },
    {
      path: '/capitulo_2',
      name: 'Capitulo_2',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_2,
        footer: Footer
      }
    },
    {
      path: '/capitulo_3',
      name: 'Capitulo_3',
      components: {
        header: Header,
        progressbar: Progressbar,
        default: Capitulo_3,
        footer: Footer
      }
    },
    {
      path: '/admin',
      name: 'Admin',
      components: {
        header: Header,
        default: Admin,
        footer: Footer
      }
    }
  ]
})