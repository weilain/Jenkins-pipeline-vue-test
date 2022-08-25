<template>
  <div class="wxbnzx-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>明星产品</span>
        <i class="icon-arr"></i>
        <span>金物奖</span>
      </div>
    </div>
    <div class="jwj-box">
      <div class="main-box list-wrap clearfix">
        <div class="left-intr" style="height:auto">
          <h3>金物奖</h3>
          <div class="logoword">新国货自己的“奥斯卡”</div>
          <p class="topp">
            2020年，以“寻找中国好产品”为初衷，金物奖组委会发起第一届金物奖，890新商学鼎力承办，2020年-2021年，两届金物奖已有超1400+企业参与。金物奖以“弘扬工匠精神，振兴国货品牌”为使命  ，致力于推动和支持新国货品牌和企业的崛起。通过寻找和发现具有原创力、创新力以及市场回报能力的新一代国货产品，来表彰和奖励中国品牌和企业崛起中做出卓越贡献的新国货产品以及在推动新国货运动中卓有成就和具有突出贡献的代表人物。
          </p>
        </div>
        <div class="right-pic">
          <img src="@/assets/img/jwj/jwj.jpg" />
        </div>
      </div>
    </div>
    <div class="mod-box">
      <div class="main-box list-wrap clearfix">
        <div class="jwj-intr" style="height:auto">
          <h3>金物奖对企业的价值</h3>
          <div class="mid-box-group">
            <div class="mid-box">
              <div class="leftimg">
                <img src="@/assets/img/jwj/1.png"  class="img"/>
              </div>
              <div class="rightword">
                <p class="title">提升品牌价值</p>
                <p class="subtitle">展现您的产品在设计、营销、创新等方面的领导力，增加产品的认知度，在全国范围内提升您的品牌价值。</p>
              </div>
            </div>
            <div class="mid-box">
              <div class="leftimg">
                <img src="@/assets/img/jwj/2.png"  class="img"/>
              </div>
              <div class="rightword">
                <p class="title">助力产品管理</p>
                <p class="subtitle">评审团会对您的新理念或创新之举进行客观公正的评价，助力您更好地决定哪些概念会有更高的投资回报率。</p>
              </div>
            </div>
            <div class="mid-box">
              <div class="leftimg">
                <img src="@/assets/img/jwj/3.png"  class="img"/>
              </div>
              <div class="rightword">
                <p class="title">获得市场关注</p>
                <p class="subtitle">作为好产品领域极富声望的权威赛事，赢得金物奖能够帮助企业赢得更多的市场关注。</p>
              </div>
            </div>
            <div class="mid-box">
              <div class="leftimg">
                <img src="@/assets/img/jwj/4.png"  class="img"/>
              </div>
              <div class="rightword">
                <p class="title">丰富的资源对接</p>
                <p class="subtitle">组委会拟联动头部的投资机构、媒体平台、设计平台、数据平台以及MCN机构，构建“数据+投资+品牌+设计+媒体”全方位合作，报名后可参加主办方组织各类线上线下活动，链接各类资源。</p>
              </div>
            </div>
            <div class="mid-box">
              <div class="leftimg">
                <img src="@/assets/img/jwj/5.png"  class="img"/>
              </div>
              <div class="rightword">
                <p class="title">品牌诊断</p>
                <p class="subtitle">组委会为每个产品出具“新国货体检报告”，帮助企业了解自身发展优势及短板，企业可针对性提升。</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mod-box">
      <div class="main-box list-wrap clearfix">
       <div class="time-intr" style="height:auto">
          <h3>金物奖日程</h3>
          <div class="centerimg">
              <img src="@/assets/img/jwj/time.png"  class="img"/>
          </div>
           <div class="btn-wrap">
            <a href="https://mp.weixin.qq.com/s/siA7dgUXMYCIs8cd44PHrg" target="_blank" class="btn-item">全文查看</a>
          </div>
        </div>
      </div>
    </div>
    <div class="mod-box">
      <div class="main-box list-wrap clearfix">
       <div class="time-intr" style="height:auto">
          <div class="centerimg">
              <video-player  class="video-player vjs-custom-skin"
                ref="videoPlayer"
                :playsinline="true"
                :options="playerOptions"
              ></video-player>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      playerOptions : {
        playbackRates: [0.7, 1.0, 1.5, 2.0], //播放速度
        autoplay: false, //如果true,浏览器准备好时开始回放。
        muted: false, // 默认情况下将会消除任何音频。
        loop: false, // 导致视频一结束就重新开始。
        preload: 'auto', // 建议浏览器在<video>加载元素后是否应该开始下载视频数据。auto浏览器选择最佳行为,立即开始加载视频（如果浏览器支持）
        language: 'zh-CN',
        aspectRatio: '16:9', // 将播放器置于流畅模式，并在计算播放器的动态大小时使用该值。值应该代表一个比例 - 用冒号分隔的两个数字（例如"16:9"或"4:3"）
        fluid: true, // 当true时，Video.js player将拥有流体大小。换句话说，它将按比例缩放以适应其容器。
        sources: [{
          type: "",//这里的种类支持很多种：基本视频格式、直播、流媒体等，具体可以参看git网址项目
          src: "http://7dian7fenlab.oss-cn-hangzhou.aliyuncs.com/test/0629%E9%87%91%E7%89%A9%E5%A5%96%E5%AE%A3%E4%BC%A0%E7%89%872.mp4" //url地址
        }],
        poster: require("@/assets/img/jwj/bg.png"), //你的封面地址
        // width: document.documentElement.clientWidth, //播放器宽度
        notSupportedMessage: '此视频暂无法播放，请稍后再试', //允许覆盖Video.js无法播放媒体源时显示的默认信息。
        controlBar: {
          timeDivider: true,
          durationDisplay: true,
          remainingTimeDisplay: false,
          fullscreenToggle: true  //全屏按钮
        }
      },
    };
  },
  methods:{
  }
};
</script>
<style lang="scss" scoped>
// >>> .vjs-big-play-button {
//   position: absolute;
//   top: 0px;
//   margin:220px  388px 225px 386px;
// }
.jwj-box{
  padding: 50px 0px;
}
.mid-box-group{
  margin-top: 44px;
  .mid-box{
    margin-top: 24px;
    display: flex;
    .leftimg{
      flex: 0 0 130px;
      margin-right: 49px;
      .img{
        width: 130px;
        height: 130px;
      }
    }
    .rightword{
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding-bottom: 4px;
      .title{
        font-size: 14px;
        font-family: Source Han Sans SC;
        font-weight: bold;
        color: #F39800;
        line-height: 22px;
      }
      .subtitle{
        font-size: 14px;
        font-family: Source Han Sans SC;
        font-weight: Regular;
        color: rgba(114, 113, 113, 1);
        line-height: 22px;

      }
    }
  }
}
.list-wrap {
  .time-intr{
    width:878px;
    float: left;
    position: relative;
    h3 {
        font-size: 18px;
        line-height: 24px;
        color: #f29600;

      }
    .centerimg{
      margin-top: 30px;
      .img{
        height: 82px;
      }
    }
    .btn-wrap {
     margin-top: 58px;
      .btn-item {
        width: 88px;
        height: 32px;
        display: block;
        // background-color: #fff;
        border: 1px solid rgba(242, 150, 0, 1);
        color: #f29600;
        font-size: 14px;
        text-align: center;
        line-height: 30px;
        text-decoration: none;
        float: left;
        margin-right: 30px;
        &:hover {
          background: rgba(242, 150, 0, 1);
          color: #fff;
        }
      }
    }
  }
  .jwj-intr{
    width:878px;
    float: left;
    position: relative;
    h3 {
        font-size: 18px;
        line-height: 24px;
        color: #f29600;

      }
  }
  .left-intr {
    width: 650px;
    float: left;
    position: relative;
    height: 350px;
    .logoword{
      margin-top: 8px;
       font-size: 14px;
        line-height: 24px;
        color: #f29600;
    }
    h3 {
        font-size: 18px;
        line-height: 24px;
        color: #f29600;
      }
    .intr-title {
      width: 100%;

      h3 {
        float: left;
        font-size: 18px;
        line-height: 24px;
        color: #f29600;
      }
      ul {
        float: right;
      }
    }
    .topp{
      padding-top: 10px;
      font-size: 14px;
      line-height: 30px;
      &.notes {
        color: #f29600;
        font-weight: bold;
        padding-bottom: 0;
        margin-bottom: -7px;
      }
    }

    .secondp {
      padding-top: 40px;
      letter-spacing:0px;
      font-size: 14px;
      line-height: 30px;
      padding-bottom: 38px;
      &.notes {
        color: #f29600;
        font-weight: bold;
        padding-bottom: 0;
        margin-bottom: -7px;
      }
    }
    .label {
      width: 122px;
      height: 24px;
      line-height: 24px;
      color: #f7f7f7;
      font-size: 12px;
      background-image: url(~@/assets/img/wxbnzx/label.png);
      background-size: 100% 100%;
      background-repeat: no-repeat;
      padding-left: 15px;
      margin-left: 20px;
      float: left;
      text-align: center;
    }
    .btn-wrap {
      position: absolute;
      bottom: 0;
      left: 0;
      .btn-item {
        width: 88px;
        height: 32px;
        display: block;
        // background-color: #fff;
        border: 1px solid rgba(242, 150, 0, 1);
        color: #f29600;
        font-size: 14px;
        text-align: center;
        line-height: 30px;
        text-decoration: none;
        float: left;
        margin-right: 30px;
        &:hover {
          background: rgba(242, 150, 0, 1);
          color: #fff;
        }
      }
    }
  }
  .right-pic {
    margin-top:22px;
    text-align: right;
    float: right;
    width: 360px;
    height: 216px;
    overflow: hidden;
    img {
      width: 100%;
    }
  }
}
</style>
