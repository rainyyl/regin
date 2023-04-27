import { createRouter, createWebHashHistory } from 'vue-router'
// import HomeView from '../views/HomeView.vue'
import AppVue from '@/App.vue'
// import showCom from "@/components/showCom.vue";

const routes = [
    
  {
    path: '/',
    name: 'home',
    component: AppVue
  },
  {
    path: '/error',
    name: 'error',
    component: () => import('../views/ErrorView.vue'),
  },
  {
    path: '/main',
    name: 'main',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import('../views/HomeView.vue'),
    children:[
      {
        path:'/homePage',
        name:'homePage',
        component:() => import('../components/HomePart'),
        
      },
      {
        path:'/food',
        name:'food',
        component:() => import('../components/FoodPart'),
      },
      {
        path:'/selfpart',
        name:'selfpart',
        component:() => import('../components/SelfPart.vue'),
      },
      {
        path:'/active',
        name:'active',
        component:() => import('../components/ActivePart'),
      },
      {
        path:'/comunicate',
        name:'comunicate',
        component:() => import('../components/ComunicatePart'),
      },
      {
        path:'/Institution',
        name:'Institution',
        component:() => import('../components/InstitutionPart.vue'),
      },
      {
        path:'/Self',
        name:'Self',
        component:() => import('../components/SelfPush.vue'),
      }
    ]
  },
  
  
  {
    path:'/RegisterView',
    name:'RegisterView',
    component:() => import('../views/RegisterView.vue'),
    children:[
      {
        path:'/login',
        name:'login',
        component:() => import('../components/Login.vue'),
      },
      {
        path:'/register',
        name:'register',
        component:() => import('../components/Register.vue'),
      },
    ]
  },
  {
    path:'/HelloWorld',
    name:'HelloWorld',
    component:() => import('../components/HelloWorld.vue'),
  },
  {
    path:'/label',
    name:'label',
    component:() => import('../components/Guidance.vue'),
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
