<template>
  <div>
    <div class="h1">
  
</div>
<div class="header">
    <div class="box logo-box">
      <h1>
        <img src="https://source.unsplash.com/featured/?nature">
        <span>Reginmen</span>
      </h1>
      <nav>
        <router-link active-class="active" to="/HomePage">主页推荐</router-link>
        <router-link active-class="active" to="/food">食疗百科</router-link>
        <router-link active-class="active" to="/active">食膳推荐</router-link>
        <router-link active-class="active" to="/comunicate">交流平台</router-link>
        <router-link active-class="active" to="/Institution">机构推荐</router-link>
        <router-link active-class="active" to="/selfpart">个人页面</router-link>
      </nav>
    </div>
    <div class="box search-box">
      <div class="search-wrapper">
        <input class="text" type="text" placeholder="请输入关键词">
        <button class="button">搜索</button>
      </div>
      <div class="user-box">
        <img src="https://source.unsplash.com/featured/?nature">
        <router-link active-class="active" to="/login">登录</router-link>
      </div>
    </div>
  </div>
</div>
  
</template>

<script>
export default {
  data() {
    return {
      theme: 'light'
    }
  }
}
</script>

<style scoped lang="scss">
// #components-layout-demo-top-side-2 .logo {
//   float: left;
//   width: 120px;
//   height: 31px;
//   margin: 16px 24px 16px 0;
//   background: rgba(255, 255, 255, 0.3);
// }

// .ant-row-rtl #components-layout-demo-top-side-2 .logo {
//   float: right;
//   margin: 16px 0 16px 24px;
// }

// .site-layout-background {
//   background: #fff;
// }
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 60px;
  border: rgb(85,95,77) solid 1px;
  background-color: rgb(85,95,77);
  color: #ffffff;
  box-shadow: -2px -2px 5px rgb(85,95,77),
    1px 1px 2px rgb(85,95,77);
}
.h1{
  color: #ced2ce;
  height: 200px;
  background-image: url(../assets/head.jpg);
  text-align: right;
  
}

.useh1{
  font-size: 150px;
  margin-left: 45%;
}
.box {
  height: 20px;
  display: flex;
  align-items: center;
}

.logo-box {
  width: 200px;
  padding: 0 20px;
}

h1 {
  display: flex;
  align-items: center;
  font: normal 28px sans-serif;
  margin: 0;
}

img {
  width: 40px;
  height: 40px;
  margin-right: 10px;
}

nav {
  height: 20px;
  display: flex;
  align-items: center;
  border: none;
  margin: 5px 10px 0px 10px;
  font: 16px Garamond, Georgia;
  border-radius: 5px;
  // background: linear-gradient(315deg, #73b57b, #3e8745);
  // box-shadow: -2px -2px 4px #437d4a,
  //   2px 2px 4px #68a770;
}

nav a {
  padding: 2px 0;
  width: 88px;
  text-decoration: none;
  color: #ffffff;
  font-size: 20px;
  font-weight: normal;
  opacity: 0.9;
}

nav a:hover {
  opacity: 1;
  color: #04421f;
}

.search-box {
  width: 400px;
  margin-right: 20px;
  display: flex;
  align-items: center;
}

.search-wrapper {
  display: flex;
  align-items: center;
  background-color: #ffffff;
  border-radius: 4px;
  padding: 4px 8px;
  width: 100%;
  margin-right: 20px;
}

//搜索框样式
.text {
  border: none;
  outline: none;
  font-size: 16px;
  padding: 8px;
  flex-grow: 1;
  border: 2px solid white;
}

.text:focus {
  color: rgb(3, 18, 11);
  background-color: #ced2ce;
  outline-color: rgb(4, 17, 8);
  box-shadow: -1px -1px 5px rgb(15, 103, 75);
  transition: .1s;
  transition-property: box-shadow;
}

.button {
  background-color: #179060;
  color: #ffffff;
  box-sizing: border-box;
  border: none;
  outline: none;
  display: inline-block;
  transition: all 300ms cubic-bezier(.23, 1, 0.32, 1);
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  will-change: transform;
  font-size: 16px;
  padding: 8px 16px;
  border-radius: 4px;
  cursor: pointer;
}

button:disabled {
  pointer-events: none;
}

button:hover {
  color: #fff;
  background-color: #074d31;
  box-shadow: rgba(6, 58, 30, 0.25) 0 8px 15px;
  transform: translateY(-2px);
}

button:active {
  box-shadow: none;
  transform: translateY(0);
}

.user-box {
  display: flex;
  align-items: center;
}

.user-box img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  margin-right: 10px;
}

.user-box a {
  color: #ffffff;
  font-size: 16px;
  text-decoration: none;
  cursor: pointer;
}
</style>



