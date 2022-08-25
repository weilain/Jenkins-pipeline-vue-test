<template>
  <div class="jlm-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>核心业务</span>
        <i class="icon-arr"></i>
        <span>90门</span>
      </div>
    </div>
    <div class="jlm-main mod2-box">
      <div class="main-box">
        <div class="logo">
          <img src="@/assets/img/jlm/logo.png" height="50" />
        </div>
        <div class="jlm-title">
          介绍
        </div>
        <div class="box-body jlm-intr">
          <p>
            魔幻2020，世界格局突变，第一批90后开始迈入而立之年。他们将成为时代的接棒主力军，创造下一个“激荡十年”的新版图。<br>
            90门精英社群旨在为90后优秀创业者、合伙人、接班人与核心高管打造一个严选的年轻社群圈层，资深导师和杰出师兄亲身辅导，解决每位会员自身的问题与困惑。
          </p>
        </div>
        <div class="jlm-intr2">
          <div class="jlm-title">使命</div>
          <div class="intr">
            <p>
              共创最具影响力的90后精英社群！
            </p>
          </div>
          <div class="jlm-title">愿景</div>
          <div class="intr">
            <p>
              同跑在世界新商业的头部方阵！
            </p>
          </div>
          <div class="jlm-title">价值观</div>
          <div class="intr">
            <p>
              以人为本、诚恳自信、共识共创
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="mod3-box">
      <div class="main-box">
        <div class="box-title">
          <h3>社群特色</h3>
        </div>
        <div class="box-body jlm-class">
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/jlm/1.png" />
                </dt>
              </dl>
              <div class="word">
                导师传思路<br>
                师兄给方法
              </div>

          </div>
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/jlm/2.png" />
                </dt>
              </dl>
              <div class="word">
                亲身辅导<br>
                帮你解决自身问题
              </div>
          </div>
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/jlm/3.png" />
                </dt>
              </dl>
              <div class="word">
                严选社群圈层<br>
                真·劝退机制
              </div>
          </div>
          <div class="box">
              <dl>
                <dt>
                  <img src="@/assets/img/jlm/4.png" />
                </dt>
              </dl>
              <div class="word">
                反教条、反枯燥<br>
                学落地、玩极致
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style lang="scss" scoped>
.jlm-main {
  .logo {
    padding-bottom: 25px;
  }
}
.mod2-box{
  padding: 51px 0px 28px;
   overflow: hidden;
  &:nth-child(2n-1) {
    background-color: #f7f7f7;
  }
}
.mod3-box{
  padding: 55px 0px 82px;
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
}
.jlm-title{
  line-height: 19px;
  font-size: 18px;
  font-family: Source Han Sans CN;
  font-weight: bold;
  color: #F29600;
  padding-bottom: 25px;
}
.jlm-intr {
  font-size: 14px;
  font-family: Source Han Sans CN;
  font-weight: 400;
  color: #232323;
  line-height: 30px;
  padding-bottom: 35px;
}
.jlm-intr2 {
    height: 270px;
  padding-right: 690px;
  background-image: url(~@/assets/img/jlm/bg.jpg);
  background-repeat: no-repeat;
  background-size: 623px 270px;
  background-position: top right;
  // margin: 50px 0 0;
  .title {
    padding: 0 0 35px;
    color: #f29600;
    font-size: 18px;
    line-height: 18px;
    font-weight: bold;
  }
  p {
    line-height: 14px;
    font-size: 14px;
  }
  .intr{
    line-height: 14px;
    margin-bottom: 44px;
    &:last-child {
      margin: 0;
    }

  }
}
.jlm-class {
  margin-top: 50px;
  width: 100%;
  overflow: hidden;
  .box{
    width: 144px;
    // height: 130px; 
    margin-right: 170px;

    float: left;
    &:last-child {
      margin: 0;
    }
    dl {
      border-radius: 50%;
      background: #FFFFFF;
      width: 130px;
      height: 130px; 
      text-align: center;
      line-height: 130px;
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
      margin-top: 24px;
      text-align: center;
      font-size: 18px;
      font-family: Source Han Sans CN;
      font-weight: bold;
      color: #232323;
      line-height: 30px;
    }
  }
}
</style>