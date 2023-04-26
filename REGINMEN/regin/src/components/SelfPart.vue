<template>
<div class="backself">
    <div class="leftshow">
        <div class="tablelink">
                <li><router-link>个人资料</router-link></li>
            
                <li><router-link>我的话题</router-link></li>
            
                <li><router-link>实名认证</router-link></li>
            
                <li><router-link>退出登录</router-link></li>
            
        </div>
        <div class="datashow">
            数据可视化
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
                <from>
                    <span>用户昵称</span><br>

                    <span>年龄</span><br>
                    <span>性别</span><br>
                    <span>电话</span><br>
                </from>
            </div>
            <div class="label">
                <h2><b> 标签显示/修改</b></h2>
            </div>
        </div>
    </div>
</div>

</template>
<script>
</script>
<style scoped>
.backself{
  margin: 0 125px;
  width: 1100px;
  height: 1500px;
  display: flex;
  justify-content: space-between;
  background-color: aliceblue;
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
.datashow{
    /* 显示数据可视化 */
    height: 500px;
}
.message-label{
    display: flex;
  justify-content: space-between;
  margin-top: 5px;
  width: 100%;
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
    width: 49%;
    background-color: white;
    height: 200px;
    text-align: left;
    padding-left: 20px;
}
.label{
    width: 50%;
    background-color: white;
    height: 200px;
}
.h2{
    margin-bottom: 20px;
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