<template>
  <buttonUse class="pos" buttonText="换一换" @click="getNew">
  </buttonUse>
  <div class="container s">
    
    <div v-for="(item, index) in data" :key="index" class="card-wrap">
      <div class="card" ref="card" @click="showPopup(index)">
        <div class="card-bg" :style="{ backgroundImage: `url(${item.vp})` }"></div>
        <div class="card-info">
          <h3 class="p1">{{ item.name }}</h3>
        </div>
      </div>
      </div>
      <div class="overlay"></div>
      <div v-show="show" class="popup show">
      <div class="split">
        <div class="left" :style="{ backgroundImage: `url(${selectedCard.vp})` }">
          
        </div>
        <div class="right">
        <h2>{{ selectedCard.name }}</h2><br>
        <!-- style="white-space: pre-wrap;"可以实现\n、\r的换行实现 -->
        <p class="p2" style="white-space: pre-wrap;">{{ selectedCard.acticle }}</p>
      </div>
        <buttonUse @click="closePopup" class="btn" buttonText="关闭">Close</buttonUse>
      </div>
    </div>
      <!-- <div class="ab">
      <div v-if="showPopup[index]" class="popup">
        <h2>弹出框标题</h2>
        <p>弹出框内容</p>
        <button @click="togglePopup(index)">关闭</button>
      </div>
    </div> -->
  </div>
  <div class="hide"></div>
</template>

<script>
// import { ref } from 'vue';
import axios from 'axios';
import buttonUse from './buttonUse.vue';
export default {
  name: 'CardGallery',
  components:{
    buttonUse,
  },
  data() {
      return {
        data: [],
        selectedCard:{},
        show:false,
        hoverEasing: 'cubic-bezier(0.23, 0.8, 0.32, 1)',
        returnEasing: 'cubic-bezier(0.445, 0.05, 0.45, 0.95)',
        };
      },
      mounted() {
    axios.get('/findDataByCount').then(response => {
      this.data = response.data;
    }).catch(error => {
      console.log(error);
    });
  },
      methods:{
        
      showPopup(index){
        this.selectedCard = this.data[index];
        this.show = true;
        document.querySelector('.overlay').style.display = 'block';
        document.querySelector('.popup').style.display = 'block';

      },
      closePopup(){
        this.show = false;
        document.querySelector('.overlay').style.display = 'none';
        document.querySelector('.popup').style.display = 'none';

      },
      gatNew(){
        axios.get('/findDataByCount').then(response => {
      this.data = response.data;
      }).catch(error => {
      console.log(error);
      });
      }
    },
  };
  // mounted() {
  //   const cards = this.$refs.card
  //   for (let i = 0; i < cards.length; i++) {
  //     cards[i].addEventListener('mousemove', (e) => {
  //       const card = e.currentTarget
  //       const mouseX = e.clientX
  //       const mouseY = e.clientY
  //       const cardX = card.offsetLeft
  //       const cardY = card.offsetTop
  //       const translateX = (mouseX - cardX) / 50
  //       const translateY = (mouseY - cardY) / 80
  //       card.style.transform = `rotateY(${translateX}deg) rotateX(${-translateY}deg)`
  //     })
  //     cards[i].addEventListener('mouseleave', (e) => {
  //       const card = e.currentTarget
  //       card.style.transform = `rotateY(0deg) rotateX(0deg)`
  //     })
  //   }
  // },
  // methods:{
  //   handleMouseMove(e) {
  //     this.mouseX = e.pageX - this.$refs.card.offsetLeft - this.width/2;
  //     this.mouseY = e.pageY - this.$refs.card.offsetTop - this.height/2;
  //   },
  //   handleMouseEnter() {
  //     clearTimeout(this.mouseLeaveDelay);
  //   },
  //   handleMouseLeave() {
  //     this.mouseLeaveDelay = setTimeout(()=>{
  //       this.mouseX = 0;
  //       this.mouseY = 0;
  //     }, 1000);
  //   }
  // }
</script>

<style scoped lang="scss">
$hoverEasing: cubic-bezier(0.23, 1, 0.32, 1);
$returnEasing: cubic-bezier(0.445, 0.05, 0.55, 0.95);

.pos{
  margin-left: -1150px;
}
.hrheight{
  width: 75%;

}
.title {
  margin-left: 20px;
  margin-top: 50px;
  font-family: "Raleway";
  font-size: 24px;
  font-weight: 700;
  color: #5D4037;
}


.p{
  font-size: 22px;
}
.p2{
  text-align: left;
}
.container {
  margin-top: 20px;
  padding: 10px 10px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
.card-wrap {
  margin: 20px;
  margin-top: 20px;
  transform: perspective(800px);
  transform-style: preserve-3d;
  cursor: pointer;
  // background-color: #fff;
  
  &:hover {
    .card-info {
      transform: translateY(0);
    }
    .card-info p {
      opacity: 1;
    }
    .card-info, .card-info p {
      transition: 0.6s $hoverEasing;
    }
    .card-info:after {
      transition: 5s $hoverEasing;
      opacity: 1;
      transform: translateY(0);
    }
    .card-bg {
      transition: 
        0.6s $hoverEasing,
        opacity 5s $hoverEasing;
      opacity: 0.8;
    }
    .card {
      margin-top: 10px;
      transition:
        0.6s $hoverEasing,
        box-shadow 2s $hoverEasing;
      box-shadow:
        rgba(white, 0.2) 0 0 40px 5px,
        rgba(white, 1) 0 0 0 1px,
        rgba(black, 0.66) 0 30px 60px 0,
        inset #333 0 0 0 5px,
        inset white 0 0 0 6px;
    }
  }
}

.card {
  position: relative;
  flex: 0 0 240px;
  width: 220px;
  height: 220px;
  background-color: #333;
  overflow: hidden;
  border-radius: 10px;
  box-shadow:
    rgba(black, 0.36) 0 30px 60px 0,
    inset #333 0 0 0 5px,
    inset rgba(white, 0.5) 0 0 0 6px;
  transition: 1s $returnEasing;
}

.card-bg {
  opacity: 0.5;
  position: absolute;
  top: -20px; left: -20px;
  width: 100%;
  height: 100%;
  padding: 20px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  transition:
    1s $returnEasing,
    opacity 5s 1s $returnEasing;
  pointer-events: none;
}

.card-info {
  padding: 20px;
  position: absolute;
  bottom: 0;
  color: #fff;
  transform: translateY(40%);
  transition: 0.6s 1.6s cubic-bezier(0.215, 0.61, 0.355, 1);
  
  p {
    font-size: 18px;
    line-height: 12px;
    opacity: 0;
    text-shadow: rgba(black, 1) 0 2px 3px;
    text-align: left;
  }
  
  
  &:after {
    content: '';
    position: absolute;
    top: 0; left: 0;
    z-index: 0;
    width: 100%;
    height: 100%;
    background-image: linear-gradient(to bottom, transparent 0%, rgba(#000, 0.6) 100%);
    background-blend-mode: overlay;
    opacity: 0;
    transform: translateY(50%);
    transition: 3s 1s $returnEasing;
  }
}

.slide-bck-top {
  -webkit-animation: slide-bck-top 0.45s cubic-bezier(0.470, 0.000, 0.745, 0.715) alternate both;
  animation: slide-bck-top 0.45s cubic-bezier(0.470, 0.000, 0.745, 0.715) alternate both;
}
//聚焦实现热度推荐的动画效果
@keyframes slide-bck-top {
  0% {
    -webkit-transform: translateZ(0) translateY(0);
    transform: translateZ(0) translateY(0);
  }

  100% {
    -webkit-transform: translateZ(-20px) translateY(-10px);
    transform: translateZ(-20px) translateY(-10px);
  }
}
.popup{
    // margin: auto;
    border-radius: 30px;
    position: fixed;
    z-index: 9;
    top:100px;
    border:  #3333337e solid 1px;
    width: 1200px;
    height: 700px;
    background-color: #fff;
    display: none;
    transition: background-color 2s;
  }
  .p1{
    font-size: 18px;
    margin-top: -50px;
    opacity: 1;
    z-index: 100;
    color: rgba(231, 245, 214, 0.864);
  }
  .split{
    display: inline-flex; /* 添加该样式 */
    border-radius: 20px;
  }
  .left{
    width: 45%;
    height: 700px;
    opacity: 1;
    border-radius: 20px 0 0 20px;
    border-right: #346f1675 solid 2px ;
    background-size: 100% 100%;
  }
  .right{
    width: 55%;
    height: 600px;
    margin: 20px 10px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    overflow-y: scroll;
  }
  .show {
  display: flex;
  justify-content: center;
  align-items: center;
  animation: popup-show-animation 2s forwards;
  background-color: rgb(255, 255, 255);
  z-index: 50;
}


@keyframes popup-show-animation {
  from {
    opacity: 0;
    transform: scale(0.5);
  }
  to {
    opacity: 1;
    transform: scale(1);
  }
}
.overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(27, 26, 26, 0.825); /* 半透明黑色背景 */
  z-index: 25; /* 将其放在弹窗下面 */
  display: none; /* 初始时隐藏 */
}
.btn{
  margin-top: -100px;
  margin-right: -250px;
}
</style>




