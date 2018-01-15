import Vue from 'vue'
import Router from 'vue-router'

import Header from '@/components/Header'
import Admin from '@/components/Admin'
import Footer from '@/components/Footer'
// import HelloWorld from '@/components/HelloWorld'
// import Hola from '@/components/Hola'


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
    // {
    //   path: '/',
    //   name: 'HelloWorld',
    //   component: HelloWorld
    // },
    // {
    //   path: '/es',
    //   name: 'Hola',
    //   components: {
    //     deafault:Hola
    //   }
    // }
  ]
})
