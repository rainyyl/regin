<template>
  <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  <HomeView />
</template>

<script>
import HomeView from './view/Home/HomeView.vue';
import { defineComponent } from "vue";
export default defineComponent({
  name:'App',
  components:{
    HomeView,
  },
});
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

</style>
