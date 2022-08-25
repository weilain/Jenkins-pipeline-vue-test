<template>
    <div class="app-wrap">
        <div class="breadcrumb-wrap">
            <div class="main-box breadcrumb-item">
                <span>核心业务</span><i class="icon-arr"></i><span>890新商学App</span>
            </div>
        </div>
        <div class="app-main mod-box">
            <div class="main-box">
                <div class="app-intr">
                    <div class="logo"><img src="@/assets/img/app/logo_2@2x.png" width="194" /></div>
                    <div class="title">开启知识服务新未来</div>
                    <div class="intr">
                        <p>从2016年推出第一个知识服务产品《每天听见吴晓波》开始，至今已拥有150+门线上课程。</p>
                        <p>为了更好地服务新中产的知识需求，我们于2019年推出890新商学App——一个会员制知识服务平台，旨在解决新中产在个人投资、创业、职场及见识进阶等方面的实际问题。目前App及H5端拥有400万的行为用户和100万的付费用户。</p>
                        <p>在传统线上课程的基础上，我们为会员提供了更高效的解决问题方式：7天训练营、线上老师一对一答疑，不同城市的线下课程等，希望可以帮助新中产升级认知体系，提升解决问题的效率，在人生的路上，跑得更快一点。</p>
                    </div>
                </div>
                <div class="app-pic">
                    <img src="@/assets/img/app/pic_1.png" width="372" />
                </div>
            </div>
        </div>
        <div class="mod-box">
            <div class="main-box">
                <div class="box-title">
                    <h3>四大模块</h3>
                </div>
                <div class="box-body app-class">
                    <!-- <img src="@/assets/img/app/pic_2.jpg" width="100%" /> -->
                    <dl>
                        <dt><img src="@/assets/img/app/1.png" /></dt>
                        <dd>
                            <h6>财富</h6>
                            <p>财富本身不让人自由<br>了解财富才让人自由</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/app/2.png" /></dt>
                        <dd>
                            <h6>职场</h6>
                            <p>职场的阶梯那么长<br>打怪升级是唯一的通道</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/app/3.png" /></dt>
                        <dd>
                            <h6>见识</h6>
                            <p>我们的见识有多大<br>天地就有多大</p>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/app/4.png" /></dt>
                        <dd>
                            <h6>家庭</h6>
                            <p>幸福是一种能力<br>家庭这堂课每个人都需要好好学习</p>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="mod-box">
            <div class="main-box">
                <div class="box-title">
                    <h3>老师大咖</h3>
                    <p>大咖导师倾力打造优质内容</p>
                </div>
                <div class="box-body">
                    <img src="@/assets/img/app/pic_3.jpg" width="100%"/>
                </div>
            </div>
        </div>
        <div class="mod-box">
            <div class="main-box">
                <div class="box-title">
                    <h3>890新商学App超级会员是什么</h3>
                    <p>超级会员是890新商学App的年费会员（2980元/年），开通后可享线上学习、线下活动和生活以及生活服务权益</p>
                </div>
                <div class="box-body">
                    <img src="@/assets/img/app/pic_4.png" width="100%"  style="margin-bottom:50px"/>
                    <img src="@/assets/img/app/pic_5.png" width="100%" />
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    data() {
        return{
        }
    },
    created() {
   },
    mounted() {
    },
    methods:{

    }
}
</script>
<style lang="scss" scoped>
.app-intr{
    width: 525px;
    float: left;
    .title{
        padding: 20px 0 35px;
        color: #F29600;
        font-size: 18px;
        font-weight: bold;
    }
    .intr{
        font-size: 14px;
        line-height: 30px;
        p{
            padding-bottom: 30px;
            &:last-child{
                padding-bottom: 0;
            }
        }
    }
}
.app-pic{
    float: left;
    width: 575px;
    text-align: center;
}
.app-class{
    // display: flex;
    overflow: hidden;
    text-align: center;
    // background-color: #ccc;
    font-size: 0px;
    
    dl{
        width: 220px;
        // background-color: #F29600;
        // flex: 1;
        display: inline-block;
        margin: 0 36px;
        // margin-right: 50px;
        text-align: center;
        vertical-align: top;
        &:first-child{
            margin-left: 0;
        }
        &:last-child{
            margin-right: 0;
        }
        dt{
            width: 96px;
            height: 96px;
            margin: 0 auto 30px;
            img{
                width:100%;
                height:100%;
            }
        }
        dd{
            h6{
                font-size: 18px;
                padding-bottom: 20px;
                font-weight: 700;
            }
            p{
                font-size: 14px;
                line-height: 28px;
            }
        }
    }
}
</style>