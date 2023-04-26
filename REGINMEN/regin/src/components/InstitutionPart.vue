<template>
    <div class="backtopic">
        <!-- 由于导航栏没能成功用viewuiplus，为了不造成样式污染，此处不再使用view-ui-olus -->
        <!-- <div class="headerList">
            <li>
                <Icon></Icon>
                <route-link class="headerLink">关心</route-link>
            </li>
            <li><route-link class="headerLink">热榜</route-link></li>
            <li><route-link class="headerLink">新发</route-link></li>
        </div>
        <div>
            <div >
                <Card class="card">
                    <template #icon>
                        <Icon type="ios-bulb-outline" :size="20" :color="green" />
                        <p>dashab</p>
                    </template>
                </Card>
            </div>
        </div> -->
        <div class="headerList">
            
            <li>
                <!-- <Icon></Icon> -->
                <route-link class="headerLink">机构推荐</route-link>
            </li>
            <li><route-link class="headerLink">用户推荐</route-link></li>
            <li><route-link class="headerLink">机构自荐</route-link></li>
        </div>
        <hr>
        <div class="contentList">
            <div class="topicline" v-for="(item,index) in topics" :key="index">
                <div>
                <li @click="jump(item.address)">
                    <h2 class="h2">{{ item.name }}</h2>
                    <p class="p">{{item.content}}</p>
                    <div class="buttomtopic">

                    </div>
                </li>
                </div>
                <div class="middle">
                    <h2>联系方式</h2>
                    <h2>{{ item.phone }}</h2>
                </div>
                <!-- //img -->
                <div class="image" :style="{backgroundImage:`url(${item.image})`}">
                    
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
// import { Card } from 'view-ui-plus';
// import { Icon } from 'view-ui-plus';
// import '/ChineseDesign/REGINMEN/regin/node_modules/view-ui-plus/dist/styles/viewuiplus.css'

export default{
    
    components: {
        //  Card ,
        //  Icon,
    },
    data(){
        return{
            topics:[]
        }
    },
    mounted() {
    axios.get('/findAllMechanism').then(response => {
      this.topics = response.data;
    }).catch(error => {
      console.log(error);
    });
  },
  methods:{
    jump(address){
        window.open(address,'_blank')
    }
  }
}
</script>
<style scoped>

.backtopic{
  background-color: white;
  margin: 10px 120px;
  width: 1150px;
  height: 100vh;
  padding: 10px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
}
.headerList{
    margin: 5px;
    display: flex;
  justify-content: space-between;
}
li{
    list-style-type:none;
    margin: 8px;
    marker: none;
    width: 65%;
}
.headerLink{
    font-size: 23px;
}
.headerLink:hover{
    color: green;
}
.contentList{
    margin: 0 8px ;
    width: 1240px;
}
.card{
   width: 100px;
   height: 100px; 
}
.middle{
    padding: 50px 0;
    width: 100px;
    color: darkgreen;
}
.topicline{
    width: 90%;
    height: 200px;
    margin-right: 5px;
    margin-top: 5px;
    display: flex;
    background-color: rgba(6, 112, 54, 0.053);
    
    justify-content: space-between;
}
.h2{
    font-size: 27px;
    height: 30px;
    width: 150px;
    margin-left: 20px;
    margin-top: 20px;
    text-align: left;
}
.p{
    text-align: left;
    width: 500px;
    margin-top: 15px;
    margin-left: 20px;
    height: 110px;
    font-size: 20px;
}
.btn{
    font-size: 16px;
    margin-left: 15px;
    padding: 3px 7px;
    border: none;
    border-radius: 5px;
    background-color: white;
}
.buttomtopic{
    height: 20px;
    display: flex;
  justify-content: space-between;
}
.image{
    margin-left: 40px;
    width: 500px;
    height: 100%;
    background-size: 100% 100%;
            background-repeat: no-repeat;
            padding: 0px;
}
</style>