<template title="荣誉&大事件">
  <div class="dsj-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>关于我们</span>
        <i class="icon-arr"></i>
        <span>荣誉&大事件</span>
      </div>
    </div>
    <div class="dsj-main main-box">
      <div class="main-box">
        <div class="box-title">
          <h3>大事件</h3>
        </div>
        <div class="pic-box">
          <img src="@/assets/img/dsj/pic_1_2x.jpeg" width="1100" />
        </div>
      </div>
      <div class="main-box pic-list">
        <ul>
          <li v-for="(item,index) in items" :key="index">
            <img :src="item.src" width="100%" />
          </li>
          <!-- <li v-for="(item,index) in items" :key="index">
            <img :src="item.src" width="100%" />
          </li> -->
        </ul>
      </div>
      <div class="main-box">
        <div class="box-title">
          <h3>荣誉</h3>
        </div>
        <div class="pic-box">
          <img src="@/assets/img/dsj/pic_2_2x.jpeg" width="100%" />
        </div>
      </div>
    </div>
  </div>
</template>
<style lang="scss" scoped>
.box-title {
  padding: 50px 0;
  h3 {
    font-size: 18px;
    line-height: 18px;
    color: #f29600;
  }
}
.pic-box {
  padding-bottom: 50px;
}
.pic-list {
  position: relative;
  height: 240px;
  overflow: hidden;
  ul {
    width: 3360px;
    // position: relative;
    animation: move 60s linear normal infinite;
    -webkit-animation: move 60s linear normal infinite;
    li {
      width: 400px;
      height: 240px;
      display: inline-block;
      margin-right: 20px;
      img {
        width: 100%;
      }
    }
  }
}

@-webkit-keyframes move {
  0% {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  100% {
    -webkit-transform: translate3d(-1680px, 0, 0);
    transform: translate3d(-1680px, 0, 0);
  }
}
@keyframes move {
  0% {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  100% {
    -webkit-transform: translate3d(-1680px, 0, 0);
    transform: translate3d(-1680px, 0, 0);
  }
}
.pic-list:hover ul {
  animation-play-state: paused;
  -moz-animation-play-state: paused;
  -webkit-animation-play-state: paused; /*动画暂停播放*/
}
// **********
</style>
<script>
export default {
  data() {
    return {
    //   animate: false,
      items: [
        { src: require("@/assets/img/dsj/1@2x.jpg") },
        { src: require("@/assets/img/dsj/2@2x.jpg") },
        { src: require("@/assets/img/dsj/3@2x.jpg") },
        { src: require("@/assets/img/dsj/4@2x.jpg") },
        { src: require("@/assets/img/dsj/1@2x.jpg") },
        { src: require("@/assets/img/dsj/2@2x.jpg") },
        { src: require("@/assets/img/dsj/3@2x.jpg") },
        { src: require("@/assets/img/dsj/4@2x.jpg") }
      ]
    };
  },
  mounted() {},
  methods: {}
};
</script>