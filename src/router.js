import { createRouter, createWebHistory } from 'vue-router'
import Index from './pages/Index.vue'
import About from './pages/About.vue'

import Hemagon from './pages/Hemagon.vue'
import Kvetun from './pages/Kvetun.vue'
import Lsmp from './pages/Lsmp.vue'
import Alterainvest from './pages/Alterainvest.vue'
import Zzapp from './pages/Zzapp.vue'
import Evenedium from './pages/Evenedium.vue'

const routes = [
  {
    name: 'index',
    path: '/',
    component: Index
  },
  {
    name: 'about',
    path: '/about',
    component: About
  },
  {
    name: 'hemagon',
    path: '/hemagon',
    component: Hemagon
  },
  {
    name: 'kvetun',
    path: '/kvetun',
    component: Kvetun
  },
  {
    name: 'londonsmp',
    path: '/londonsmp',
    component: Lsmp
  },
  {
    name: 'alterainvest',
    path: '/alterainvest',
    component: Alterainvest
  },
  {
    name: 'zzapp',
    path: '/zzapp',
    component: Zzapp
  },
  {
    name: 'evenedium',
    path: '/evenedium',
    component: Evenedium
  }
]

export let router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior(to, from, savedPosition) {
    if (to.hash) {
      return { el: to.hash }
    } else {
      return { top: 0 }
    }
  }
})

export default router
