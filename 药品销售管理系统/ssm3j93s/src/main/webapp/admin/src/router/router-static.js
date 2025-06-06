import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import yaopinleibie from '@/views/modules/yaopinleibie/list'
    import news from '@/views/modules/news/list'
    import yuangong from '@/views/modules/yuangong/list'
    import yaopinruku from '@/views/modules/yaopinruku/list'
    import yaopinxinxi from '@/views/modules/yaopinxinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import yaopinchuku from '@/views/modules/yaopinchuku/list'
    import yonghu from '@/views/modules/yonghu/list'
    import messages from '@/views/modules/messages/list'
    import orders from '@/views/modules/orders/list'
    import discussyaopinxinxi from '@/views/modules/discussyaopinxinxi/list'
    import zaixianzixun from '@/views/modules/zaixianzixun/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/yaopinleibie',
        name: '药品类别',
        component: yaopinleibie
      }
          ,{
	path: '/news',
        name: '医药指南',
        component: news
      }
          ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
          ,{
	path: '/yaopinruku',
        name: '药品入库',
        component: yaopinruku
      }
          ,{
	path: '/yaopinxinxi',
        name: '药品信息',
        component: yaopinxinxi
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/yaopinchuku',
        name: '药品出库',
        component: yaopinchuku
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/messages',
        name: '留言板管理',
        component: messages
      }
          ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
          ,{
	path: '/discussyaopinxinxi',
        name: '药品信息评论',
        component: discussyaopinxinxi
      }
          ,{
	path: '/zaixianzixun',
        name: '在线咨询',
        component: zaixianzixun
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
