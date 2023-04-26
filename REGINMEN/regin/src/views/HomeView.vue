<template>
  <div class="back">
  <div class="home">
    <!-- <img alt="Vue logo" src="../assets/logo.png"> -->
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
    <!-- 设置它在跳转时不被卸载,就是在路由的index中加入children属性 -->
    <nav-still></nav-still>
  </div>
  <div class="contents">
    <div class="content">
      <router-view></router-view>
    </div>
  </div>
  
</div>
<div>
    <GlobalFooter :links="links" :copyright="copyright" />
  </div>
</template>

<script>
import 'view-ui-plus/dist/styles/viewuiplus.css'
// import { Icon } from "view-ui-plus";

// @ is an alias to /src
import NavStill from "@/components/NavStill.vue";
export default {
  components: {
    // Guidance,
    NavStill,
  },
  // beforeRouteUpdate (to, from, next) {
  //   // 缓存需要展示导航栏的页面组件
  //   if (to.matched.some(record => record.meta.keepAlive)) {
  //     this.$store.dispatch('addAlivePage', to.name)
  //   }
  //   next()
  // },
  // beforeRouteLeave (to, from, next) {
  //   // 删除不需要展示导航栏的页面组件缓存
  //   if (from.matched.some(record => !record.meta.keepAlive)) {
  //     this.$store.dispatch('removeAlivePage', from.name)
  //   }
  //   next()
  // }这个是通过路由中加入meta属性保留，但是现在我选择在路由中使用children属性
};
</script>
<style scoped>
.home {
  background-attachment: fixed;
  margin-top: 10px;
  background-image: url(../assets/cool-background.png);
}
.contents {
  display: flex;
  justify-content: center;
}
.content {
  display: flex;
  width: 1400px;
  height: 1400px;
  /*background-color: #f0f2f3;*/

}
html,
body {
  margin: 0;
  padding: 0;
}


.back {
  background-image: url(../assets/back.jpg);
  height: 4000px;
  margin-bottom: 0;
  border: black solid 1px;
}

</style>
