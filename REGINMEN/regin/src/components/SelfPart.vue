<template>
    <div class="backself">
        <div class="leftshow">
            <div class="tablelink">
                    <li><router-link active-class="active" to="/HomePage">个人资料</router-link></li>
                
                    <li><router-link active-class="active" to="/HomePage">我的话题</router-link></li>
                
                    <li><router-link active-class="active" to="/HomePage">实名认证</router-link></li>
                
                    <li><router-link active-class="active" to="/HomePage">退出登录</router-link></li>
                
            </div>
            <!-- 数据可视化 -->
                 <div id="myChart" :style="{width: '700px', height: '600px'}"></div>
                 <div class="datashow">
                    <div  id="pieChart" :style="{width: '500px', height: '400px'}">
                </div>
                </div>
    </div>
        </div>
        <div class="rightshow">
            <div class="showuser">
                <div class="img"><img src="../assets/head.jpg"></div>
                <div class="name">
                    <h2>用户名</h2>
                    <button>退出登录</button>
                </div>
            </div>
            <div class="message-label">
                <div class="message">
                    <h2 class="h2"><b>基本信息显示</b></h2>
                    <form>
                        <span>用户昵称</span><br>
    
                        <span>年龄</span><br>
                        <span>性别</span><br>
                        <span>电话</span><br>
                        <h2><b> 标签显示/修改</b></h2>
                    </form>
                </div>
                
            </div>
            
    </div>
      
</template>

<script>
import axios from 'axios';
import * as echarts from 'echarts';

export default {
  name: 'EchartsUse',
  data() {
    return {
      data: [],
      data2: [],
      itemStyle: ["#3fb1e3","#c4ebad","#c4ebad","#6be6c1",
        "#3fb1e3","#c4ebad","#3fb1e3","#3fb1e3","#3fb1e3","#3fb1e3"],
        user:{
            id:'',
            age:'',
            sex:'',
            phone:'',
            label:[]
        },
      data3: [
        { name: 'Data 1', value: 100 },
        { name: 'Data 2', value: 90 },
        { name: 'Data 3', value: 80 },
        { name: 'Data 4', value: 70 },
        { name: 'Data 5', value: 60 },
      ],
    };
  },
  mounted() {
    let id = sessionStorage.getItem('session_id');
      if(id==null){
        this.user.id = '游客';
        this.user.age = '无';
        this.user.sex = '无';
        this.user.phone = '无';
        this.user.label = null;
    }else{
        axios.get('/selectFoodLabel',{ params: { id: id } }).then(response => {
            console.log(this.user)
      this.user.id = response.data.id;
      this.user.sex = response.data.sex;
      this.user.age = response.data.age;
      this.user.phone = response.data.phone;
      this.user.label = response.data.label;

    }).catch(error => {
      console.log(error);
    });
    }
    let myChart = echarts.init(document.getElementById('myChart'));

    axios.get('/findTop10').then(response => {
      this.data = response.data;
      console.log(this.data);

      axios.get('/findOdds').then(response => {
        this.data2 = response.data;
        console.log(this.data2);
        

        // 绘制图表
        myChart.setOption({
          title: {
            text: '网站top10标签分析',
            left: 'center',
            top: 20,
            textStyle: {
              color: '#555555'
            }
          },
          tooltip: {},
          xAxis: {
            data: this.data.map(item => item.name),
          },
          yAxis: {},
          series: [{
            name: '热度',
            type: 'bar',
            data: this.data.map((item, index) => ({
              value: item.count,
              itemStyle: {
                color: this.itemStyle[index % this.itemStyle.length],
              },
            })),
          }]
        });
      }).catch(error => {
        console.log(error);
      });
    }).catch(error => {
      console.log(error);
    });

    let pieChart = echarts.init(document.getElementById('pieChart'));
    const option = {
      title: {
        text: '网站用户年龄分布',
        left: 'center',
        textStyle: {
          color: '#555555'
        }
      },
      tooltip: {
        trigger: 'item',
        formatter: '{b}: {d}%'
      },
      series: [
        {
          name: '年龄',
          type: 'pie',
          radius: '55%',
          center: ['50%', '50%'],
          data: this.data3.map(item => ({
            name: item.name,
            value: item.value
          })),
          itemStyle: {
            emphasis: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          },
          label: {
            show: true,
            formatter: '{b}: {d}%'
          }
        }
      ]
    };

    // 使用配置项绘制图表
    pieChart.setOption(option);
  }
}
</script>

    <style scoped>
    .backself{
      margin-left: 125px;
      width: 1100px;
      height: 1500px;
      display: flex;
      justify-content: space-between;
      background-color: rgb(255, 255, 255);
    }
    .chart {
    width: 1200px;
    height: 1200px;
  }
    .img{
        width: 17%;
        padding-bottom: 10px;
    }
    img {
      width: 100px;
      height: 100px;
      margin-left: 10px;
      display: block;
      margin-top: 10px;
      border-radius: 50%;
      border: rgb(11, 54, 23) solid 1px;
    }
    .leftshow{
      display: flex;
      flex-direction: column;
      justify-content: flex-start;
      align-items: flex-start;
      background-color: white;
      width: 35%;
    }
    .rightshow{
      display: flex;
      flex-direction: column;
      width: 65%;
      justify-content: flex-start;
      align-items: flex-start;
      margin-left: 5px;
    }
    .tablelink li{
        list-style-type: none;
        margin: 30px 0 50px 50px;
        marker: none;
    }
    a{
      font-size: 20px;
    }
    a:hover{
        background-color: rgba(142, 234, 234, 0.541);
    }
    .message-label{
      margin-top: 5px;
      height: 700px;
      width: 100%;
      border: black solid 1px;
    }
    .showuser{
        background-color: white;
        display: flex;
      justify-content: space-between;
      width: 100%;
    }
    .name{
        width: 80%;
        margin-top: 10px;
        text-align: left;
    }
    .message{
        width: 100%;
        background-color: white;
        height: 200px;
        text-align: left;
        padding-left: 20px;
    }
    .datashow{
        width: 100%;
        background-color: white;
        height: 500px;
    }
    .h2{
        margin-bottom: 20px;
        width: 100%;
    }
    .bottomstyle{
        font-size: 20px;
        background-color: rgb(255, 255, 255);
        padding: 3px;
      }
      .label-item {
      background-color: #eee;
      color: #333;
      padding: 10px;
      margin: 5px;
      border-radius: 5px;
      cursor: pointer;
    }
    </style>