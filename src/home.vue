<template>
  <el-container class="is-vertical">
    <v-Head></v-Head>
    <el-container class="container-wrapper">
      <el-main>
        <router-view></router-view>
      </el-main>
    </el-container>
    <v-Foot></v-Foot>
  </el-container>
</template>

<script>
import Vue from "vue";
import vHead from "./common/header";
import vFoot from "./common/footer";
export default {
  name: "home",
  data() {
    return {};
  },
  provide() {},

  components: {
    vHead,
    vFoot
  },
  methods: {
    
  },
  mounted() {},
  watch: {
    $route(to, from) {
      window.scrollTo(0, 0);
      // this.public.goToTop();
    }
  }
};
</script>

<style lang="scss">
.el-container {
  min-width: 1100px;
}
.el-main {
  padding: 0px;
  min-height: 100px;
}
//   // 新鲜资讯
.xxzx-wrap {
  .title {
    font-size: 24px;
    padding: 50px 0;
    text-align: center;
  }
  .xxzx-list {
    .list-item {
      padding-bottom: 50px;
    }
    .list-pic {
      width: 300px;
      height: 200px;
      float: left;
      .el-image {
        height: 200px;
        line-height: 200px;
        width: 100%;
        text-align: center;
        background-color: #f5f7fa;
        color: #9d9d9d;
      }
      img {
        width: 100%;
        height: 100%;
        vertical-align: top;
        text-align: center;
      }
    }
    .list-intr {
      width: 100%;
      min-height: 200px;
      padding-left: 350px;
      a {
        color: #232323;
      }
      h4 {
        font-size: 18px;
        line-height: 18px;
        padding-bottom: 20px;
        color: #232323;
        a:hover {
          color: #f29600;
        }
      }
      h6 {
        font-size: 14px;
        line-height: 14px;
        padding-bottom: 10px;
        font-weight: normal;
        a {
          color: #f29600;
        }
      }
      p {
        font-size: 14px;
        line-height: 30px;
        color: #232323;
      }
    }
  }
  .xxzx-btn-wrap {
    text-align: center;
    padding-bottom: 50px;
  }
}
</style>
