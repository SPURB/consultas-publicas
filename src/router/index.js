import Vue from 'vue'
import Router from 'vue-router'

import Header from '@/components/Header'
import Admin from '@/components/Admin'
import Footer from '@/components/Footer'
import Teste from '@/components/Teste'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Admin',
      components: {
        header: Header,
        default: Admin,
        footer: Footer
      }
    },
    {
      path: '/teste',
      name: 'Teste',
      components: {
        default: Teste,
      }
    }
  ]
})
