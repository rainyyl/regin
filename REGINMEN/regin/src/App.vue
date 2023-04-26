<template id="app">
  <div class="back">

  
  <!-- <Guidance></Guidance> -->
  <div v-if="showHelloWorld">
    <HelloWorld msg="欢迎来到Reginmen，我们致力于为大家提供个性化的养老服务简介页面"></HelloWorld>
  </div>
 
</div>
</template>

<script>
// import Guidance from '@/components/Guidance.vue'
import HelloWorld from './components/HelloWorld.vue';

export default {
  name:'HomePage',
  components: {
    // Guidance,
    HelloWorld,
  },
  data() {
    return {
      showHelloWorld: true, // 初始为显示
    }
  },
  
}
</script>
<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 5px;
  border: solid black 1px;
  a {
    margin: 5px;
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
html,
body {
  margin: 0;
  padding: 0;
}
.back {
  background-image: url(../src/assets/back.jpg);
  height: 100vh;
  margin-bottom: 0;
}


</style>
