<template>
  <div class="jlm-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>核心业务</span>
        <i class="icon-arr"></i>
        <span>新匠人新国货促进会</span>
      </div>
    </div>
    <div class="jlm-main mod2-box">
      <div class="main-box jlm-intr2">
        <div class="logo">
          <img src="@/assets/img/xjr/top.png" class="img" />
        </div>
        <div class="jlm-title xjr-title">一个专属于新国货创业者的社群</div>
        <div class="intr-word">
              新匠人新国货促进会是一个专属于新消费创业者的社群，由财经作家吴晓波发起，旨在通过知识服务、资源链接、品牌宣传等多种线上线下活动，聚集品牌打造和流量增长，持续赋能和连接新消费品牌创始人，陪伴新国货成长。
        </div>
      </div>
    </div>
    <div class="mod3-box">
      <div class="main-box">
        <div class="xjr-title">
          社群特色
        </div>
        <div class="box-body jlm-class">
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/xjr/b1.png" />
                </dt>
              </dl>
              <div class="word">
                <p class="title">圈子</p>
                汇集1000+新国货品牌创始人<br/>
                <p class="titleword"></p>
                <p class="titleword">筛选优质人脉</p>
                <p class="titleword">高效连接资源</p>
              </div>

          </div>
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/xjr/b2.png" />
                </dt>
              </dl>
              <div class="word">
                <p class="title">聚焦</p>
                牌打造+流量增长<br>
                <p class="titleword">实战派到时亲身辅导</p>
                <p class="titleword">学习品牌&流量新打法，突破认知局限</p>
                <p class="titleword">标杆企业零距离交流</p>
                <p class="titleword">学习先进经验，实现价值连接</p>
              </div>
          </div>
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/xjr/b3.png" />
                </dt>
              </dl>
              <div class="word">
                 <p class="title">视野</p>
                多维度预见消费新动向<br>
                <p class="titleword">聚合新匠人群体</p>
                <p class="titleword">凝聚新国货力量</p>
                <p class="titleword">联合红利期平台共同为新匠人赋能，为新国货发声</p>
              </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mod4-box">
      <div class="main-box">
        <div class="box-title">
          <p class="xjr-title">新消费实战导师</p>
          <p class="xjr-word">带你跨越认知鸿沟，解决创业关键问题</p>
        </div>
        <div class="box-body xjr-class">
          <div class="xjr-sigle" v-for="item in teacherList" :key="item.index">
                            <div class="people" v-for="ite in item" :key="ite.index">
                                <div class="peoplebox">
                                    <img :src="ite.src"  class="img"/>
                                </div>
                                <div class="info">
                                    <div v-for="it in ite.dic" :key="it.index" class="infobg">
                                        <ul :class="it.indexOf('&')>-1?'listStyleF':'listStyleN'">
                                          <li :class="it.indexOf('&')>-1?'listStyleF':'listStyleN'"><span class="spanw">{{it.indexOf('&')>-1?it.slice(1):it}}</span></li>
                                        </ul>
                                    </div>
                                    
                                </div>
                            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mod5-box">
      <div class="main-box">
        <div class="box-title">
          <p class="xjr-title">新匠人理事团</p>
          <p class="xjr-word">共享创业经验，共建行业资源</p>
        </div>
         <div class="box-body xjr-class">
          <div class="xjr-sigle" v-for="item in agentList" :key="item.index">
                            <div class="people" v-for="ite in item" :key="ite.index">
                                <div class="peoplebox">
                                    <img :src="ite.src"  class="img"/>
                                </div>
                                <div class="info">
                                    <div class="name">{{ite.name}}</div>
                                    <div v-for="it in ite.dic" :key="it.index">
                                        <p>{{it}}</p>
                                    </div>
                                </div>
                            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="mod6-box">
      <div class="main-box">
        <div class="box-title">
          <p class="xjr-title">严选会员</p>
          <p class="xjr-word">招募消费品企业创始人、合伙人、核心高管 跨行业深度交流学习</p>
        </div>
        <div class="box-body xjr-class">
          <div class="xjr-sigle" v-for="item in vipList" :key="item.index">
                            <div class="people" v-for="ite in item" :key="ite.index">
                                <div class="peoplebox">
                                    <img :src="ite.src"  class="img"/>
                                </div>
                                <div class="info">
                                    <div class="name">{{ite.name}}</div>
                                    <div v-for="it in ite.dic" :key="it.index">
                                        <p>{{it}}</p>
                                    </div>
                                </div>
                            </div>
          </div>
        </div>
        <div class="hrefbtn">
          <a class="btn" href="https://jinshuju.net/f/s6cQL5" target="_blank">
            申请加入
          </a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      teacherList:[
          [
            {
              src: require('@/assets/img/xjr/c1.png'),
              dic:["&中国消费市场投资界泰斗,天图","投资创始合伙人","&成功投资江小白、周黑鸭、小","红书、奈雪的茶等国民品牌"]
            }, 
            {
              src: require('@/assets/img/xjr/c2.png'),
              dic:["&新匠人新国货促进会理事长","TOP10消费创投机构头头是道","基金合伙人","&成功投资认养一头牛、钟薛","高、大希地、林清轩、熊猫不","走等新消费品牌"]
            }, 
            {
              src: require('@/assets/img/xjr/c3.png'),
              dic:["&弘章资本创始合伙人","&成功投资蓝月亮、家家悦、钱","大妈、紫燕百味鸡、好享家等","大消费项目"]
            }, 
            {
              src: require('@/assets/img/xjr/c4.png'),
              dic:["&峰瑞资本创始合伙人","&成功投资三只松鼠、铜板街、","Bilibili、英语流利说、江小白","等一系列优秀创业公司"]
            }, 
          ],
          [
            {
              src: require('@/assets/img/xjr/c5.png'),
              dic:["&上海真观品牌管理有限公司总","经理","&辅导欧舒丹、鲜芋仙、豫园等","200家品牌，帮助中华航空实","现年净利润增加26.56亿"]
            }, 
            {
              src: require('@/assets/img/xjr/c6.png'),
              dic:["&深圳顺知定位咨询创始人，精","研定位10余年 ","&辅助大理石瓷砖、人本帆布","鞋、秋水伊人女装、德施曼智","能锁等品牌获得良好增长；为","南孚、学而思、啄木鸟等企业","品牌咨询顾问"]
            }, 
            {
              src: require('@/assets/img/xjr/c7.png'),
              dic:["&前阿里巴巴国际站在线营销部","门负责人光年实验室CEO，17","年流量经验","&携程、阿里云、好未来、有","赞、每日优鲜等40+主流大型","公司流量顾问"]
            }, 
            {
              src: require('@/assets/img/xjr/c8.png'),
              dic:["&见实科技CEO","&前腾讯微博开放平台负责人","&《社交红利》、《社交红利","2.0:即时引爆》作者"]
            }, 
          ],
      ],
       agentList:[
          [
            {
              src: require('@/assets/img/xjr/q1.png'),
              name: '孙仕军',
              dic:["认养一头牛联合","创始人&CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/q2.png'),
              name: '林小仙',
              dic:["小仙炖鲜炖燕窝","创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q3.png'),
              name: '林　盛',
              dic:["钟薛高创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q4.png'),
              name: '铁皮叔叔',
              dic:["永璞咖啡创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q5.png'),
              name: '毛戈平',
              dic:["MAOGEPING","创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q6.png'),
              name: '孙来春',
              dic:["林清轩创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q7.png'),
              name: '胡春华',
              dic:["永艺椅业副总经理"]
            }, 
          ],
          [
            {
              src: require('@/assets/img/xjr/q8.png'),
              name: '亓金亮',
              dic:["自然旋律创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q9.png'),
              name: '朱军岷',
              dic:["朱炳仁·铜","创始人&CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/q10.png'),
              name: '曾德钧',
              dic:["猫王音响创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q11.png'),
              name: '范劲松',
              dic:["90分创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q12.png'),
              name: '戴冬英',
              dic:["乐范创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q13.png'),
              name: '钟　波',
              dic:["极米创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q14.png'),
              name: '路凯林',
              dic:["雷神创始人"]
            }, 
          ],
          [
            {
              src: require('@/assets/img/xjr/q15.png'),
              name: '陈利军',
              dic:["爱家科技创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q16.png'),
              name: '俞任放',
              dic:["NONOO创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q17.png'),
              name: '林振宇 ',
              dic:["壹网壹创创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q18.png'),
              name: '李红星',
              dic:["粉条生活创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q19.png'),
              name: '张海政',
              dic:["星商电子商务","创始人&CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/q20.png'),
              name: '王珊',
              dic:["极易电商创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/q21.png'),
              name: '',
              dic:[""]
            }, 
          ],
      ],
       vipList:[
          [
            {
              src: require('@/assets/img/xjr/1.png'),
              name: '陈兴荣',
              dic:["须眉科技创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/2.png'),
              name: '章　骏',
              dic:["贝医生创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/3.png'),
              name: '谢冠宏',
              dic:["1MORE万魔耳机","董事长兼CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/4.png'),
              name: '艾丽斯',
              dic:["jovs联合","创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/5.png'),
              name: '陈嘉伟',
              dic:["沈荡酿造CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/6.png'),
              name: '钱　峰',
              dic:["古越龙山","营销部长"]
            }, 
            {
              src: require('@/assets/img/xjr/7.png'),
              name: '梅　洪',
              dic:["怡园酒庄","总经理"]
            }, 
          ],
          [
            {
              src: require('@/assets/img/xjr/8.png'),
              name: '金子博',
              dic:["老金磨坊","创始人兼CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/9.png'),
              name: '孙语浍',
              dic:["龙米家联合","创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/10.png'),
              name: '陶石泉',
              dic:["江小白＆梅见","创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/11.png'),
              name: '孙李志',
              dic:["唯新食品","副总经理"]
            }, 
            {
              src: require('@/assets/img/xjr/12.png'),
              name: '方   新',
              dic:["当歌雅酒董事长"]
            }, 
            {
              src: require('@/assets/img/xjr/13.png'),
              name: '宋骁先',
              dic:["启尔酒具创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/14.png'),
              name: '李辉丰',
              dic:["玉柏玲珑创始人"]
            }, 
          ],
          [
            {
              src: require('@/assets/img/xjr/15.png'),
              name: '庄　帅',
              dic:["泊喜创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/16.png'),
              name: '柯瑞萍',
              dic:["雅瓷创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/17.png'),
              name: '雷梅娜',
              dic:["睡眠博士创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/18.png'),
              name: '马晓轩',
              dic:["可丽金CEO"]
            }, 
            {
              src: require('@/assets/img/xjr/19.png'),
              name: '郭洪涛',
              dic:["赞马创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/20.png'),
              name: '杨须跃',
              dic:["随便创始人"]
            }, 
            {
              src: require('@/assets/img/xjr/21.png'),
              name: '',
              dic:[""]
            }, 
          ],
      ],
    };
  }
};
</script>
<style lang="scss" scoped>
.listStyleF{
  list-style-type: square;
  list-style-position:inside;
  color: #B22B2F;
  font-size:20px;
  // margin-left: -10px;
  .spanw{
    color: #000000;
    font-size:14px;
    margin-left: -10px;
  }
}
.listStyleN{
  list-style-type: square;
  list-style-position:inside;
  color: #FFFFFF;
  font-size:20px;
  // margin-left: -1px;
  .spanw{
    color: #000000;
    font-size:14px;
     margin-left: -10px;
  }
}
.xjr-title{
  height: 18px;
  font-size: 18px;
  font-family: Source Han Sans CN;
  font-weight: bold;
  color: #A10527;
  margin-bottom: 19px;
}
.xjr-word{
  height: 15px;
  font-size: 14px;
  font-family: Source Han Sans CN;
  font-weight: 400;
  color: #232323;
}
.jlm-main {
  .logo {
    padding-bottom: 19px;
    .img{
      width: 300px;
      height: 86px;
    }
  }
}
.mod2-box{
  padding: 51px 0px 28px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
  .jlm-intr2 {
  height: 270px;
  padding-right: 624px;
  background-image: url(~@/assets/img/xjr/right.png);
  background-repeat: no-repeat;
  background-size: 470px 276px;
  background-position: top right;
  // margin: 50px 0 0;
  .jlm-title{
    height: 18px;
    font-size: 18px;
    font-family: Source Han Sans CN;
    font-weight: bold;
    color: #A10527;
    line-height: 30px;
    padding-bottom: 50px;
  }
  .intr-word{
    font-size: 14px;
    font-family: Source Han Sans CN;
    font-weight: 400;
    color: #232323;
    line-height: 30px;
    margin-bottom: 44px;
  }
}
}
.mod3-box{
  padding: 30px 0px 51px 0px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
  .box-title {
    h3 {
      font-size: 18px;
      line-height: 18px;
      color: #f29600;
    }
  }
  .jlm-class {
  margin-top: 27px;
  width: 100%;
  overflow: hidden;
  text-align: center;
  margin-left:133px;
  .box{
    // width: 140px;
    margin-right: 118px;
    float: left;
    text-align: center;
    &:last-child {
      margin: 0;
    }
    dl {
      margin: 0 auto;
      border-radius: 50%;
      background: #FFFFFF;
      width: 132px;
      height: 132px; 
      text-align: center;
      line-height: 132px;
      padding: 25px 30px;
      dt {
        width: 70px;
        height: 80px;
        margin: 0 auto;
        img {
          width: 100%;
          height: 100%;
        }
      }
    }
    .word{
      font-size: 16px;
      font-family: Source Han Sans CN;
      font-weight: 500;
      color: #A10527;
      line-height: 30px;
      margin-top: 20px;
      text-align: center;
      // font-size: 18px;
      // font-family: Source Han Sans CN;
      // font-weight: bold;
      // color: #232323;
      // line-height: 18px;
      .title{
        font-size: 18px;
        font-family: Source Han Sans CN;
        font-weight: bold;
        color: #1D1D1D;
        line-height: 30px;
      }
      .titleword{
        font-size: 14px;
        font-family: Source Han Sans CN;
        font-weight: 400;
        color: #232323;
        line-height: 30px;
      }
    }
  }
}
}
.mod4-box{
   padding: 62px 0px 53px 0px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
  .box-title {
    h3 {
      font-size: 18px;
      line-height: 18px;
      color: #f29600;
    }
    margin-bottom:60px;
  }

  .xjr-class{
    .xjr-sigle{
      margin:29px 0px 20px;
      height: 340px;
      display: flex;
      .people{
                  height: 221px;
                  text-align: center;
                  width: 210px;
                  margin-right: 86px;
                  .peoplebox{
                      height:221px;
                      width: 210px;
                      .img{
                        height:221px;
                        width: 210px;
                      } 
                  } 
                  .info{
                    margin-top: 14px;
                    font-size: 14px;
                    font-family: Source Han Sans CN;
                    font-weight: 500;
                    color: #000000;
                    line-height: 18px;
                    .infobg{
                      text-align: left;
                    }
                  }
                        
              }
    }
  }

}
.mod5-box{
   padding: 53px 0px 57px 0px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
  .box-title {
    h3 {
      font-size: 18px;
      line-height: 18px;
      color: #f29600;
    }
     margin-bottom:29px;
  }

  .xjr-class{
    .xjr-sigle{
      margin-bottom:20px;
      height: 175px;
      display: flex;
      .people{
                  height: 175px;
                  text-align: center;
                  width: 108px;
                  margin-right: 57px;
                  .peoplebox{
                      height:108px;
                      width: 108px;
                      .img{
                        height:108px;
                        width: 108px;
                      } 
                  } 
                  .info{
                        margin-top:13px;
                        font-size: 14px;
                        font-family: Source Han Sans CN;
                        font-weight: 400;
                        color: #646464;
                        line-height: 18px;
                          .name{
                              font-size: 18px;
                              font-family: Source Han Sans CN;
                              font-weight: 400;
                              color: #000000;
                              margin-bottom: 5px;
                          }

                      }               
              }
    }
  }
}


.mod6-box{
   padding: 42px 0px 79px 0px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
  .box-title {
    h3 {
      font-size: 18px;
      line-height: 18px;
      color: #f29600;
    }
    margin-bottom: 44px;
  }
  .xjr-class{
    .xjr-sigle{
      margin:29px 0px 20px;
      height: 175px;
      display: flex;
      .people{
                  height: 175px;
                  text-align: center;
                  width: 108px;
                  margin-right: 57px;
                  .peoplebox{
                      height:108px;
                      width: 108px;
                      .img{
                        height:108px;
                        width: 108px;
                      } 
                  } 
                  .info{
                        margin-top:13px;
                        font-size: 14px;
                        font-family: Source Han Sans CN;
                        font-weight: 400;
                        color: #646464;
                        line-height: 18px;
                          .name{
                              font-size: 18px;
                              font-family: Source Han Sans CN;
                              font-weight: 400;
                              color: #000000;
                              margin-bottom: 5px;
                          }

                      }               
              }
    }
  }
  .hrefbtn{
    margin-top:80px;
    text-align: center;
    .btn{
      padding: 12px 36px 13px 31px;
      width: 201px;
      height: 56px;
      background: #B22B2F;
      border-radius: 28px;
      font-size: 33px;
      font-family: Source Han Sans CN;
      font-weight: 400;
      color: #FFFFFF;
      line-height: 56px;
    }
  }
}

</style>