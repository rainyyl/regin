<template>
    <div class="backCom">
        <div class="box">
      <div class="header1">
        <li><div class="topic1"></div><a href="#">热门话题</a></li>
        </div>
        <div class="header1">
        <li><a href="#"><div class="topic2"></div>猜你想看</a></li>
        </div>
        <div class="header1 ">
        <li><a href="#"><div class="topic3"></div>打卡聚榜</a></li>
        </div>
        <div class="header1">
        <li><a href="#"><div class="topic4"></div>活跃榜</a></li>
      </div>
    </div>
    <div class="box2">
        <!-- 这个选择方法没写啊 -->
      <div class="content1 " v-for="(item, index) in data1" :key="index">
        <li >
          <div class="container">
            <div class="left" :style="getRedColor(index)">&nbsp;{{ index+1 }}</div>
            <h2 class="center h2"><a class="center h2 a2"
              >{{ item.name }}</a></h2>
            <div class="right">{{ item.count }}</div>
          </div>
        </li>
      </div>
    </div>
    <div class="box3">
        <div class="header2">
        </div> 
      <div class="footer1" v-for="(item, index) in data1" :key="index">
        <li >
          <div class="topic5"></div>
          <a>{{ item.name}}</a>
        </li>
      </div>
    </div>
    </div>

</template>
<script>
import axios from 'axios';
export default {
    data(){
        return{
            data1:[],
           //label
         }
    },
    mounted() {
    axios.get('/TopicSort').then(response => {
      this.data1 = response.data;
    }).catch(error => {
      console.log(error);
    });
    
  },
  methods:{
    getRedColor(index) {
  if (index == 0) {
    return { color: 'rgba(249, 12, 7, 0.727)' };
  } else if(index == 1){
    return{ color:'rgba(247, 127, 8,0.801)' };
  }
  else if(index == 2){
    return {color:'rgba(241, 175, 9, 0.774)'};
  }
  else if(index > 2){
    return { color: 'rgba(1, 32, 12, 0.862)' };
  }
},

  }
}
    
</script>
<style scoped>
.active{
  color: red;
}
.backCom{
  margin: 10px 125px;
  width: 1150px;
  height: 1500px;
  display: flex;
  justify-content: space-between;
}
.box {
  background-color: white;
  display: flex;
  border-radius: 8px;
  flex-direction: column;
  width: calc(18% - 0px);
}
.box2{
  display: flex;
  flex-direction: column;
  width: calc(50% - 0px);
  border-radius: 8px;
}
.box3{
  background-color: rgb(255, 255, 255);
  display: flex;
  flex-direction: column;
  width: calc(30% - 0px);
  border-radius: 8px;
}
.header1{
  height: 50px;
  color: hsla(0, 3%, 18%, 0.764);
}
.header2{
  border-radius: 8px;
  width: 100%;
  height: 300px;
  background-size: 100% 100%;
  background-image: url('../assets/back2.jpg');
  opacity: 0.8;
}
a{
    font-size: 16px;
    text-align: left;
    color: rgba(107, 103, 103, 0.755);
}
a:hover{
    color: rgba(10, 82, 58, 0.8);
}
.footer1{
    height: 50px;
    margin-left: 30px;
}
.content1 {
  height: 65px;
  width: 100%;
  background-color: white;
  margin-bottom: 5px;
  border-radius: 8px;
  display: flex;
  font-family: 'Times New Roman', Times, serif;
  justify-content: space-between;
}
.h2{
    width: 80%;
    margin-left: 20px;
    border-radius: 5px;
    display: block;
    color: rgba(1, 32, 12, 0.862);
}
li {
  display: block;
  width: 100%;
  list-style: none;
  padding: 15px 5px 5px 5px;
  position: relative;
}
.topic1{
  width: 25px;
  height: 25px;
  background-image: url('../img/1.png');
  position: absolute;
  left: 40px;
}
.topic2{
  width: 25px;
  height: 25px;
  background-image: url('../img/2.png');
  position: absolute;
  left: 40px;
}
.topic3{
  width: 25px;
  height: 25px;
  background-image: url('../img/3.png');
  position: absolute;
  left: 40px;
  
}
.topic4{
  width: 25px;
  height: 25px;
  background-image: url('../img/4.png');
  position: absolute;
  left: 40px;
  top: 12px;
}
.t_count{
  margin: auto 10px;
}
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-radius: 15px;
  justify-content:left;
}

.left {
  position: absolute;
  font-size: 30px;
  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  color: rgba(10, 131, 10, 0.279);
  order: 1;
  left: 5px;
  justify-content:left;
}

.center {
  font-size: 23px;
  order: 2;
  display: inline-block;
  justify-content:left;
  margin-left: 0px;
  font-weight: 800;
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.right {
  order: 3;
  color: rgba(111, 111, 111, 0.601);
  justify-content:left;
}
.topic5{
  width: 25px;
  height: 25px;
  background-image: url('../img/5.png');
  position: absolute;
  margin-top: -5px;
  margin-left: -27px;
}
.a2:hover{
    color: rgba(10, 82, 58, 0.8) !important;
}

.color-red {
  color: #FF0000;
}

</style>