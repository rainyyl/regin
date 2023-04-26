<template>
  <div>
    <div v-if="showHello" class="hello hid">
      <h1>{{ msg }}</h1>
      <div>
        <p>简介</p>
        <p>放置图片，悬浮式card，等介绍以及项目的意义</p>
      </div>
      <button @click="register">开始养生定制化服务</button>
      <button @click="home">先不注册，我先看一下</button>
      <!-- <router-link to="/">先不注册，我先看一下</router-link> -->
    </div>
    <div>
      <!-- <router-link to="/Register">开始养生定制化服务</router-link> -->
      <router-view v-if="showRigesterOrHome"/>
    </div>
  </div>
</template>

<script>

export default {
  name: "HelloWorld",
  props: {
    msg: String
  },
  data() {
    return {
      showHello: true,
      showRigesterOrHome:false,
    }
  },
  methods:{
    register(){
      // window.location.href = 'http://localhost:8080/#/Register';
      this.$router.push('/login')
      this.showHello = false;
      this.showRigesterOrHome = true;
    },
    home(){
      // window.location.href = 'http://localhost:8080/#/';
      this.$router.push('/homePage')
      this.showHello = false;
      this.showRigesterOrHome = true;
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>

