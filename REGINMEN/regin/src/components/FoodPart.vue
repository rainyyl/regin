<template>
  
    <div class="backfood">
      <!-- 按钮 -->
      <div>
        <div class="divbutton">
          
          <span><b>分类:</b></span>
          <button v-for="(item,index) in data1" 
          :key="index" 
          :class="{ 'button1': true ,'button1click':isActive1[index]}"
          @click = "changeStatus1(index)"
          >
          <!-- :class="{ 'button1': true }" -->
            {{ item }}
          </button>
        </div>
        <hr class="hr">
        <div class="divbutton">
          <span><b>功效:</b></span>
          <div class="button-wrapper">
            <button v-for="(item,index) in data2" 
            :key="index" 
            :class="{ 'button2': true ,'button2click':isActive2[index]}"
            @click = "changeStatus2(index)"
            >
              {{ item }}
            </button>
          </div>
        </div>
        <hr class="hr">
        <div class="divbutton">
          <span><b>时令:</b></span>
          <div class="button-wrapper">
            <button v-for="(item,index) in data3" 
            :key="index" 
            :class="{ 'button2': true ,'button2click':isActive3[index]}"
            @click = "changeStatus3(index)"
            >
              {{ item }}
            </button>
          </div>
        </div>
        <hr class="hr">
        <div class="divbutton">
          <span><b>排序:</b></span>
          <div class="button-wrapper">
            <button v-for="(item,index) in data4" 
            :key="index" 
            :class="{ 'button2': true ,'button2click':isActive4[index]}"
            @click = "changeStatus4(index)"
            >
              {{ item }}
            </button>
          </div>
        </div>
        <hr class="hr">
      </div>
      <div class="content">
    <ul>
      <li class="pic" v-for="(item,index) in foodpic" :key="index">
        <a href="#">
          <div class="img"  :style="{backgroundImage:`url(${item.vp})`}">
            <p class="p">{{item.name}}</p>
          <!-- <img :src="item.vp"> -->
          
        </div>
        </a>
      </li>
    </ul>
    
  </div>
    </div>
    
  </template>
<script>
import axios from 'axios';
export default {
    data(){
        return{
            data1:['全部','蔬菜类','水果/干果','禽畜/肉类','水产/海鲜','米面豆乳','药食/药材','蛋奶/其它','调味品'],
           //label
            data2:['全部','防癌','抗衰老','降血压','降血糖','降血脂','提高免疫力','开胃','养胃','养心','养肝','润肺'
                    ,'润肠','滋阴','养颜','壮阳','补肾','补血','补脾','补气','消食','消炎','消肿','清热','消暑','排毒',
                    '生津','活血','健脑','安颜','明目','止咳','止痛','利尿'],
            data3:['全部','春季','夏季','秋季','冬季'],
            data4:['最新','点击'],
            foodpic:[],
            isActive1: new Array(9).fill(false),
            isActive2: new Array(34).fill(false),
            isActive3: new Array(5).fill(false),
            isActive4: new Array(2).fill(false),
        }
    },
    mounted() {
    axios.get('/selectFoodLabel').then(response => {
      this.foodpic = response.data;
    }).catch(error => {
      console.log(error);
    });
  },
    methods:{
        changeStatus1(index) {
            this.isActive1 = this.isActive1.map((value, idx) => idx === index);
         },
        changeStatus2(index) {
            this.isActive2 = this.isActive2.map((value, idx) => idx === index);
        },
        changeStatus3(index) {
            this.isActive3 = this.isActive3.map((value, idx) => idx === index);
        },
        changeStatus4(index) {
            this.isActive4 = this.isActive4.map((value, idx) => idx === index);
        },

           
        },
    computed:{
    },
}
</script>
<style scoped lang="scss">
.backfood {
  background-color: white;
  margin: 10px 116px;
  width: 1150px;
  height: 1500px;
  padding: 20px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
}

.divbutton {
  padding: 2px;
  font-size: 16px;
  margin: 6px 5px;
  display: inline-flex; /* 添加该样式 */
  width: 100%; /* 添加该样式 */
}

.button1 {
  font-size: 16px;
  margin: 2px 6px;
  padding: 3px 7px;
  border: none;
  border-radius: 5px;
  background-color: white;
}
.button1click{
    color: white;
    background-color: rgb(239, 138, 37);
}
.hr {
  border-color: rgb(255, 255, 255);
  opacity: 0.2;
}
.content{
    padding: 2px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    border-radius: 5px;
}
.pic{
    margin: 15px;
    width: 125px;
    height: 120px;
    display: inline-flex; /* 添加该样式 */
}
.img{
    width: 140px;
    height: 130px;
    background-size: 100% 100%;
    padding-top:100px ;
    padding-bottom: 0px;
    border-radius: 15px;
}
a{
    border-radius: 5px;
}
.p{
    width: 140px;
    height: 30px;
    background-color: rgba(248, 248, 248, 0.666);
    font-size: 20px;
    color: rgba(43, 67, 29, 0.601);
    z-index: 9;
    border-radius: 0 0 15px 15px;
}
.divbutton span {
  display: inline-block;
  text-align: left;
  font-weight: bold;
  white-space: nowrap;
  margin-top: 6px;
}

.button2 {
  font-size: 16px;
  margin: 5px 7px;
  padding: 5px 10px;
  border: none;
  color: black;
  border-radius: 5px;
  background-color: rgba(247, 243, 243, 0.973);
}
.button2click{
    color: white;
    background-color: rgb(239, 138, 37);
}
.button-wrapper {
  display: inline-flex;
  flex-wrap: wrap; /* 添加该样式 */
  width: 100%; /* 添加该样式 */
}
</style>