<template>
  <div class="xsx-main">
    <!-- 轮播图 -->
    <el-carousel height="600px">
      <el-carousel-item v-for="(item , index) in banner" :key="index">
        <div class="img-wrap" :style="{'background-color':item.bgColor}">
          <span class="banner" v-bind:style="{backgroundImage: 'url(' + item.src + ')'}" v-if="item.href == ''"></span>
          <a
            class="banner"
            :href="item.href"
            :target="item.target"
            v-bind:style="{backgroundImage: 'url(' + item.src + ')'}"
            v-if="item.href != ''"
          ></a>
        </div>
      </el-carousel-item>
    </el-carousel>
    <!-- 轮播图 end-->
    <!-- 业务介绍 -->
    <div class="business-wrap">
      <div class="business-main">
        <!-- 1 -->
        <div class="main-box main-wrap" v-show="num==0">
          <div class="business-info">
            <div class="logo logo_1"></div>
            <h3 class="title">从一个人到一群人</h3>
            <div class="intr">
              <p>2014年创办泛财经知识服务平台，内容涵盖财经知识、产业观察、企业管理等。</p>
              <p>
                <b>挖掘：</b>新闻背后的财经知识
                <br />
                <b>发现：</b>数据之中的商业价值
                <br />
                <b>理解：</b>新中产的需求与焦虑，共同成长
                <br />
                <b>助力：</b>企业家提升自我，不惧前行
              </p>
            </div>
            <router-link class="btn-more" to="/wxbpd">了解详情</router-link>
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_1@2x.jpg" alt="吴晓波频道" width="388" />
          </div>
        </div>
        <!-- 2 -->
        <div class="main-box main-wrap" v-show="num==1">
          <div class="business-info">
            <div class="logo logo_2"></div>
            <h3 class="title">开启知识服务新未来</h3>
            <div class="intr">
              <p>从2016年推出第一个知识服务产品《每天听见吴晓波》开始，至今已拥有150+门线上课程。</p>
              <p>为了更好的服务新中产的知识需求，我们于2019年推出890新商学App——一个会员制知识服务平台，旨在解决新中产在个人投资、创业、职场及见识进阶等方面的实际问题。</p>
              <p>在传统线上课程的基础上，我们为会员提供了更高效的解决问题方式：7天训练营、线上老师一对一答疑，不同城市的线下课程等，希望可以帮助新中产升级认知体系，提升解决问题的效率，在人生的路上，跑得更快一点。</p>
            </div>
            <router-link class="btn-more" to="/app">了解详情</router-link>
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_2@2x.jpg" alt="890新商学App" width="372" />
          </div>
        </div>
        <!-- 3 -->
        <div class="main-box main-wrap" v-show="num==2">
          <div class="business-info">
            <div class="logo logo_3"></div>
            <h3 class="title">弘扬工匠精神，振兴国货品牌</h3>
            <div class="intr">
              <p>新匠人新国货促进会是一个专属于新消费创业者的社群，由财经作家吴晓波发起，旨在通过知识服务、资源链接、品牌宣传等多种线上线下活动，聚集品牌打造和流量增长，持续赋能和连接新消费品牌创始人，陪伴新国货成长。</p>
              <!-- <p>2015年吴晓波频道发现新中产群体崛起，对应需求端的变化，我们发现一批品牌创业者，我们称他们为新匠人。</p> -->
              <!-- <p>2016至2017年，陪伴认养一头牛等品牌成长，并运营内容电商美好+。</p> -->
              <!-- <p>2018年，正式推出新匠人新国货加速计划，并成立促进会，由吴晓波老师担任会长，专注于服务消费品创业者。我们以企业访学、课程学习、投融资对接等多种线上线下活动为载体，以品牌打造和流量增长为主要内容，持续赋能和连接会员企业。迄今已有1000+消费品品牌创始人加入我们。</p> -->
            </div>
            <a target="_blank" class="btn-more" href="https://www.inewmaker.com">了解详情</a>
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_3@2x.jpg" alt="新匠人" width="525" />
          </div>
        </div>
        <!-- 4 -->
        <div class="main-box main-wrap" v-show="num==3">
          <div class="business-info">
            <div class="logo logo_4"></div>
            <h3 class="title">成就中国卓越企投家</h3>
            <div class="intr">
              <!-- <p>企投会成立于2017年5月18日，是以学习并成为“企投家”为目标的交互式学习社群。"企投家"是由财经作家吴晓波于2017年3月28日提出，指从单一企业经营者进化到“企业家+投资家”的融合性角色，代表着未来的风向标和新的商业之美。</p> -->
              <!-- <p>企投会旨在通过交互聚合式的学习，为中国企业家破解知识、产业及资本焦虑，将“全球机遇+中国机会”双重捕捉，实现企业价值和个人财富的双向增长。</p> -->
              <!-- <p>企投会以成就中国健康卓越企投家为使命，迄今为止积累了100+前沿实战导师，1000+企投会员，打造出一个千亿资产级的交互式学习社群。</p> -->
              <p>企投会成立于2017年5月18日，是以学习并成为“企投家”为目标的交互式学习社群。</p>
              <p>“企投家”是由财经作家吴晓波于2017年3月28日提出，指从单一企业经营者进化到“企业家+投资家”的融合性角色，代表着未来的风向标和新的商业之美。</p>
              <p>企投会旨在通过交互聚合式的学习，为企业家破解知识、产业及资本焦虑，将“全球机遇+中国机会”双重捕捉，实现企业价值和个人财富的双向增长。</p>
              <p>企投会以成就中国健康卓越企投家为使命，迄今为止积累了100+前沿实战导师，1000+企投会员，打造出了一个千人级的交互式学习社群。</p>

            </div>
            <router-link class="btn-more" to="/qtjxy">了解详情</router-link>
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_4@2x.jpg" alt="企投家学院" width="525" />
          </div>
        </div>
        <!-- 5 -->
        <div class="main-box main-wrap" v-show="num==4">
          <div class="business-info">
            <div class="logo logo_5"></div>
            <h3 class="title">
              一样的我们，不一样的你
            </h3>
            <div class="intr">
              <!-- <p>魔幻2020，世界格局突变，第一批90后开始迈入而立之年。他们将成为时代的接棒主力军，创造下一个“激荡十年”的新版图。</p> -->
              <!-- <p>90门精英社群旨在为90后优秀创业者、合伙人、接班人与核心高管打造一个严选的年轻社群圈层，有导师和师兄亲身辅导，解决每位会员自身的问题与困惑。</p> -->
              <p>从2020年开始，第一批90后开始迈入而立之年。他们将成为时代的接棒主力军，创造下一个“激荡十年”的新版图。</p>
              <p>90门精英社群旨在为90后优秀创业者、合伙人、接班人与核心高管打造一个严选的年轻社群圈层，有导师和师兄亲身辅导，解决每位会员自身的问题与困惑。</p>
            </div>
            <router-link class="btn-more" to="/jlm">了解详情</router-link>
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_5@2x.jpg" alt="90门" width="525" />
          </div>
        </div>
        <!-- 6 -->
        <div class="main-box main-wrap" v-show="num==5">
          <div class="business-info">
            <div class="logo logo_6"></div>
            <h3 class="title">
              成就中国制造新领袖
            </h3>
            <div class="intr">
              <p>由890新商学联合中南高科共同创办，致力于中国制造业企业家的进步与成长，培育并发掘新一代中国制造业未来领袖。</p>
              <p>面向制造业企业主、联合创始人、高管等，帮助制造业企业家们进行破茧式学习，以服务好制造业的知识需求为己任，同时链接300+制造业相关资源机构进行赋能，推动制造业企业成为未来智造风向标。</p>
              <p>我们坚信推动制造业企业成长和成功的根本是要赋能企业内驱动力——不断升级迭代企业家思想，让企业家以更具时代性、前瞻性的思维和眼光带领中国制造业走向远大前程。</p>
            </div>
            <!-- <router-link class="btn-more" to="/jlm">了解详情</router-link> -->
          </div>
          <div class="business-img">
            <img src="@/assets/img/home/business/pic_6@2x.jpg" alt="90门" width="525" />
          </div>
        </div>
      </div>
      <div class="business-tab">
        <ul class="main-box">
          <li
            v-for="(item,index) in businessList"
            :key="item.tabName"
            @mouseover="num=index"
            :class="{active:num==index}"
          >{{item.tabName}}</li>
        </ul>
      </div>
    </div>
    <!-- 业务介绍 end-->
    <div class="home-wrap">
      <!-- 新鲜资讯 -->
      <div class="main-box xxzx-wrap">
        <h2 class="title">新鲜资讯</h2>
        <div class="xxzx-list">
          <!-- 1 -->
          <dl class="list-item clearfix" v-for="item in xxzxList" :key="item.index">
            <dt class="list-pic">
              <a :href="item.href" target="_blank">
                <el-image :src="item.src" lazy>
                  <div slot="error" class="image-slot">
                    加载失败
                    <span class="dot">...</span>
                  </div>
                  <div slot="placeholder" class="image-slot">
                    加载中
                    <span class="dot">...</span>
                  </div>
                </el-image>
              </a>
            </dt>
            <dd class="list-intr">
              <!-- <a :href="item.href" target="_blank"> -->
              <h4>
                <a :href="item.href" target="_blank">{{item.title}}</a>
              </h4>
              <h6>
                <a :href="item.href" target="_blank">{{item.subTit}}</a>
              </h6>
              <a :href="item.href" target="_blank">
                <p v-html="item.intr">{{item.intr}}</p>
              </a>
              <!-- </a> -->
            </dd>
          </dl>
          <!-- 1 end -->
        </div>
        <div class="xxzx-btn-wrap">
          <router-link class="btn-more" to="/xxzx">查看更多</router-link>
        </div>
      </div>
      <!-- 新鲜资讯 END -->
    </div>
  </div>
</template>
 
<script>
export default {
  data() {
    return {
      Nav: false, //头部切换效果
      // activeIndex: "1",//头部是否首页
      //轮播图片
      banner: [
        {
          src: require("@/assets/img/home/banner/1.jpg"),
          href: "",
          target: "",
          bgColor: "#e37a0d"
        },
        {
          src: require("@/assets/img/home/banner/2.jpeg"),
          href: "/app",
          target: "",
          bgColor: "#f4860b"
        },
        {
          src: require("@/assets/img/home/banner/3.jpeg"),
          href: "https://jinshuju.net/f/s6cQL5",
          target: "_blank",
          bgColor: "#d7ccc8"
        },
        {
          src: require("@/assets/img/home/banner/4.jpg"),
          href: "https://jinshuju.net/f/EquieW?x_field_1=%E5%AE%98%E7%BD%91",
          target: "_blank",
          bgColor: "#000d3e"
        },
        {
          src: require("@/assets/img/home/banner/5.jpg"),
          href: "/jlm",
          target: "",
          bgColor: "#fbd883"
        },
        {
          src: require("@/assets/img/home/banner/6.jpg"),
          href: "",
          target: "",
          bgColor: "#1e0b99"
        },
        {
          src: require("@/assets/img/home/banner/7.jpeg"),
          href: "https://jinshuju.net/f/sgEP89",
          target: "",
          bgColor: "#0e0b06"
        }
      ],
      fits: "cover",
      //tab切换
      num: 0, //当前选中状态
      //tab标题
      businessList: [
        { tabName: "吴晓波频道" },
        { tabName: "890新商学App" },
        { tabName: "新匠人新国货促进会" },
        { tabName: "企投会" },
        { tabName: "90门" },
        { tabName: "中德制造业研修院" },
      ],
      //新鲜资讯
      xxzxList: [
        {
          src: require('@/assets/img/xxzx/new/1.jpg'),
          href: 'https://mp.weixin.qq.com/s/3Cug_Eob07qnL1_bKwMRkw',
          title: '新国货社群招募：与1000+创始人同行，深度学习一手商业经验',
          subTit: '#新匠人新国货促进会',
          intr: '新国货社群是一个专属于新国货创业者的社群。它由890新商学发起，致力于联合国货品牌及上下游产业链企业，为新国货品牌创业者提供资源链接、知识内容、品牌赋能等高净值服务。它的推出，旨在凝聚国货品牌创业者，共建国货品牌资源圈，为“新国货崛起”聚集更强大势能。'
        }, 
         {
          src: require('@/assets/img/xxzx/new/2.jpg'),
          href: 'https://mp.weixin.qq.com/s/vV7hhogyOyZmRZnkXsf7Ew',
          title: '规则扩张，新物种出现，数字化是企业活下去的关键',
          subTit: '#企投中国行',
          intr: '30年后，互联网能做什么？微信聊天、二维码支付、扫摩拜单车、自动驾驶……它已经完完全全重塑了我们所感知的世界。这个世界，已经是数字的世界。企业如何抓住数字化转型机遇重塑企业核心竞争力？'
        }, 

         {
          src: require('@/assets/img/xxzx/new/3.jpg'),
          href: 'https://mp.weixin.qq.com/s/tgaQsHFfmFvN3dCYHzH97g',
          title: '吴晓波：我们正处在制造业变革的台风中心（演讲全文）',
          subTit: '#年中经济论坛：半程2021，风往哪里吹',
          intr: '回到现场”，回到中国产业经济的现场，看看现场发生了什么事情'
        }, 
         {
          src: require('@/assets/img/xxzx/new/4.jpg'),
          href: 'https://mp.weixin.qq.com/s/siA7dgUXMYCIs8cd44PHrg',
          title: '电影人的梦想是奥斯卡，新国货创造者的梦想或许是它 | 金物奖招募',
          subTit: '#金物奖2021',
          intr: '第三次新国货运动浩浩汤汤，涌现的创新国货如过江之鲫，各领风骚，这些中国品牌中的弄潮儿，他们的梦想又是什么？'
        }
      ]
    };
  },
  created() {},
  mounted() {
  },
  methods: {
    tab(index) {
      this.num = index;
    }
  }
};
</script>
 
<style lang="scss" scoped>
.home .common-unav-wrap {
  background: none !important;
}

/deep/.xsx-main {
  .el-carousel {
    min-width: 1200px;
  }
  .el-carousel__indicators--horizontal {
    bottom: 90px;
    .el-carousel__indicator {
      padding: 12px;
    }
    .el-carousel__button {
      width: 12px;
      height: 12px;
      padding: 0;
      background: rgba(255, 255, 255, 1);
      border-radius: 50%;
      box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3);
    }
    .el-carousel__indicator.is-active {
      .el-carousel__button {
        width: 48px;
        height: 12px;
        background: rgba(255, 255, 255, 1);
        border-radius: 6px;
      }
    }
  }
  .el-carousel__container:hover,
  .el-carousel__indicator:hover {
    .el-carousel__arrow {
      display: none !important;
    }
  }
  .el-carousel__arrow {
    width: 0px;
    height: 0px;
  }
  //
  .img-wrap {
    width: 100%;
    min-width: 1200px;
    height: 600px;
    overflow: hidden;
    text-align: center;
    a,
    .banner {
      display: block;
      width: 100%;
      height: 100%;
      background-position: center center;
      background-size: auto 100%;
      background-repeat: no-repeat;
    }
    img {
      max-width: 1920px;
      height: 600px;
      max-height: 1920px;
    }
  }
  //
  .business-wrap {
    width: 100%;
    height: 510px;
    margin: 0 auto;
    position: relative;
    z-index: 2;
    background-color: #fff;
    padding-top: 450px;
    // box-shadow:0px 0px 10px 0px rgba(0, 0, 0, 0.3);
    .business-main {
      width: 1200px;
      height: 530px;
      position: absolute;
      top: -80px;
      left: 0;
      right: 0;
      margin: 0 auto;
      background-color: #fff;
      // box-shadow: 0 2px 20px 0 rgba(15,41,131,.1);
      .main-wrap {
        &.is-active {
          display: block;
        }
        .logo {
          height: 100px;
          background-repeat: no-repeat;
          background-position: center left;
          &.logo_1 {
            background-image: url(~@/assets/img/home/business/logo_1@2x.png);
            background-size: 78px 50px;
          }
          &.logo_2 {
            background-image: url(~@/assets/img/home/business/logo_2@2x.png);
            background-size: 194px 40px;
          }
          &.logo_3 {
            background-image: url(~@/assets/img/home/business/logo_3@2x.png);
            background-size: 140px 42px;
          }
          &.logo_4 {
            background-image: url(~@/assets/img/home/business/logo_4@2x.png);
            background-size: auto 40px;
          }
          &.logo_5 {
            background-image: url(~@/assets/img/home/business/logo_5@2x.png);
            background-size: auto 40px;
          }
          &.logo_6 {
            background-image: url(~@/assets/img/home/business/logo_6@2x.png);
            background-size: auto 40px;
          }
        }
        .title {
          font-size: 20px;
          padding-bottom: 20px;
          // color: #232323;
        }
        .intr {
          p {
            font-size: 14px;
            line-height: 26px;
            padding-bottom: 20px;
          }
        }
      }
    }
    .business-info {
      width: 575px;
      height: 530px;
      float: left;
      padding-right: 50px;
      position: relative;
      .btn-more {
        position: absolute;
        bottom: 40px;
        left: 0;
      }
    }
    .business-img {
      float: left;
      width: 525px;
      height: 530px;
      line-height: 530px;
      overflow: hidden;
      text-align: center;
      // padding-top: 100px;
      img {
        vertical-align: middle;
        // width: 100%;
        max-height: 100%;
      }
    }
    .business-tab {
      height: 60px;
      position: relative;
      margin: 0 auto;
      background-color: #f7f7f7;
      ul {
        display: flex;
        li {
          flex: 1;
          text-align: center;
          line-height: 60px;
          font-size: 14px;
          cursor: pointer;
          &.active,
          &:hover {
            background-color: #9d9d9d;
            opacity: 0.5;
            color: #fff;
            cursor: pointer;
          }
        }
      }
    }
  }
  .home-wrap {
    position: relative;
    z-index: 3;
    width: 100%;
    min-width: 1200px;
    background-color: #fff;
  }
}
</style>