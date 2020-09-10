import Vue from 'vue'
import Router from 'vue-router'
import home from '../views/home'
import page1 from '../views/page1'
import page2 from '../views/page2/page2.vue'
import page3 from '../views/page3/page3.vue'

Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'home',
            component: home
        },
        {
            path: '/page1',
            name: 'page1',
            component: page1
        },
        {
            path: '/page2',
            name: 'page2',
            component: page2
        },
        {
            path: '/page3',
            name: 'page3',
            component: page3
        },
    ]
})
