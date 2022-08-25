<template>
  <div class="bps-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>明星产品</span><i class="icon-arr"></i><span>白皮书系列</span>
      </div>
    </div>
    <div class="main-box clearfix">
      <div class="bps-list clearfix">
        <div class="left-intr">
          <h3>2021中国企投家白皮书报告</h3>
          <p>系统呈现我国企投家的群体特征，描述企投家的企业现状、投资现状和发展趋势。</p>
        </div>
        <div class="right-pic">
          <a><img src="@/assets/img/bps/5.png" /></a>
        </div>
      </div>
      <div class="bps-list clearfix">
        <div class="left-intr">
          <h3>新中产白皮书</h3>
          <p>读懂新中产，是读懂中国未来的一种方式，《新中产白皮书》以6大篇章4种方式全面解读新中产人群。</p>
        </div>
        <div class="right-pic">
          <a href="https://mp.weixin.qq.com/s/ckXqF6LZPPx6rJzrPlh9sQ" target="_blank" rel="noopener noreferrer"><img src="@/assets/img/bps/1.png" /></a>
        </div>
      </div>
      <!-- <div class="bps-list clearfix">
        <div class="left-intr">
          <h3>中国企业大学白皮书</h3>
          <p>越来越多的中国企业开始搭建自己的企业大学，但中国的企业大学仍处于初级阶段，《890新商学企业大学白皮书》将从不同的视角解读中国企业大学的现状和未来。</p>
        </div>
        <div class="right-pic">
          <img src="@/assets/img/bps/2.png" />
        </div>
      </div> -->
      <div class="bps-list clearfix">
        <div class="left-intr">
          <h3>新国货白皮书</h3>
          <p>以新国货为主题的白皮书，从国货历史、产业变迁、行业发展和企业案例等角度进行全方位解读。</p>
        </div>
        <div class="right-pic">
          <a href="https://mp.weixin.qq.com/s/5KfwpkAwtEZp510ziTarLw" target="_blank" rel="noopener noreferrer"><img src="@/assets/img/bps/3.png" /></a>
        </div>
      </div>
      <div class="bps-list clearfix">
        <div class="left-intr">
          <h3>新匠人100</h3>
          <p>以数据维度定义和衡量新匠人群体的榜单，从独特性、成长性、创新性三个角度衡量企业发展潜力，对企业经营具有指导意义。</p>
        </div>
        <div class="right-pic">
          <a href="https://mp.weixin.qq.com/s/ymTNcUgguhecd32mRDAM3w" target="_blank" rel="noopener noreferrer"><img src="@/assets/img/bps/4.png" /></a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  mounted() {}
};
</script>
<style lang="scss" scoped>
.bps-list {
  width: 525px;
  float: left;
  margin: 50px 50px 0 0;
  &:nth-child(2n) {
    margin-right: 0px;
  }
  .left-intr {
    width: 260px;
    float: left;
    h3 {
      font-size: 18px;
      line-height: 18px;
      color: #f29600;
      padding-bottom: 30px;
    }
    p {
      font-size: 14px;
      line-height: 30px;
    //   text-align-last: justify;
    //   text-align: justify;
    //   text-justify: distribute-all-lines;
    }
  }
  .right-pic {
    float: right;
    width: 216px;
    height: 304px;
    margin-bottom: 30px;
    img {
      width: 100%;
    }
  }
}
</style>