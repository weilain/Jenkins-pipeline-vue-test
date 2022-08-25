<template>
    <div class="qtjxy-wrap">
        <div class="breadcrumb-wrap">
            <div class="main-box breadcrumb-item">
                <span>核心业务</span><i class="icon-arr"></i><span>企投会</span>
            </div>
        </div>
        <div class="qtjxy-main">
            <div class="main-box">
                <div class="qtjxy-head">
                    <div class="logo"><img src="@/assets/img/qtjxy/logo_1.png" height="43" /></div>
                    <div class="box-title">
                        <h3 class="qth-title">成就中国卓越企投家</h3>
                    </div>
                    <p>企投会成立于2017年5月18日，是以学习并成为“企投家”为目标的交互式学习社群。<br>
                    <br>
                    “企投家”是由财经作家吴晓波于2017年3月28日提出，指从单一企业经营者进化到“企业家+投资家”的融合性角色，代表着未来的风向标和新的商业之美。 <br>
                    <br>
                    企投会旨在通过交互聚合式的学习，为企业家破解知识、产业及资本焦虑，将“全球机遇+中国机会”双重捕捉，实现企业价值和个人财富的双向增长。<br>
                    <br>
                    企投会以成就中国健康卓越企投家为使命，迄今为止积累了100+前沿实战导师，1000+企投会员，打造出了一个千人级的交互式学习社群。
                    </p>
                </div>
                <div class="qtjxy-img">
                    <img src="@/assets/img/qtjxy/wu.png" class="img"/>
                </div>
                <div style="clear:both"></div>
            </div>
        </div>
        <div class="midel-main">
            <div class="midel-box">
                <div class="siglebox" @mouseover="type=1" :style="{'background':(type==1?'#F29600':'#EEEEEE' )}">
                    <div class="box-body titlemidel">
                        <span class="word">企投私房课·避免败局</span>
                    </div>
                    <div class="boxsigle" v-if="type==1"></div>
                </div>
                <div class="siglebox" @mouseover="type=2" :style="{'background':(type==2?'#F29600':'#EEEEEE' )}">
                    <div class="box-body titlemidel" >
                         <span class="word">企投家成长营</span>
                    </div>
                    <div class="boxsigle" v-if="type==2"></div>
                </div>
                <div class="siglebox" @mouseover="type=3" :style="{'background':(type==3?'#F29600':'#EEEEEE' )}">
                    <div class="box-body titlemidel">
                        <span class="word">企投家领袖营</span>
                    </div>
                    <div class="boxsigle" v-if="type==3"></div>
                </div>
                <div class="siglebox" @mouseover="type=4" :style="{'background':(type==4?'#F29600':'#EEEEEE' )}">
                    <div class="box-body titlemidel">
                        <span class="word">企投系列活动</span>
                    </div>
                    <div class="boxsigle" v-if="type==4"></div>
                </div>
            </div>
        </div>
        <div class="bg-main">
            <div class="bg-box" v-bind:style="{backgroundImage: 'url(' + bannerUrl1 + ')'}" v-if="type==1">
            </div>
            <div class="bg-box" v-bind:style="{backgroundImage: 'url(' + bannerUrl2 + ')'}" v-if="type==2">
            </div>
            <div class="bg-box" v-bind:style="{backgroundImage: 'url(' + bannerUrl3 + ')'}" v-if="type==3">
            </div>
            <div class="bg-box" v-bind:style="{backgroundImage: 'url(' + bannerUrl4 + ')'}" v-if="type==4">
            </div>
            <div class="headbtn">
                    <a class="btn" target="_blank" href="https://jinshuju.net/f/Py9RML" v-if="type==1"><img src="@/assets/img/qtjxy/btn1.png" width="100%"/></a>
                    <a class="btn" target="_blank" href="https://jinshuju.net/f/EquieW?x_field_1=%E5%AE%98%E7%BD%91" v-if="type==2"><img src="@/assets/img/qtjxy/btn2.png" width="100%"/></a>
                    <a class="btn" target="_blank" href="https://jinshuju.net/f/CAAJi4?x_field_1=%E5%AE%98%E7%BD%91" v-if="type==3"><img src="@/assets/img/qtjxy/btn2.png" width="100%"/></a>
            </div>
        </div>
         <div class="dt-main">
                <div class="dt-grounp">
                    <div class="title1">
                        企投动态
                    </div>
                    <div class="title2">
                        焦点视频
                    </div>
                    <div class="box1">
                        <div class="box1-grounp" v-for="item in dtsList" :key="item.index">
                            <div class="lf">
                                <img :src="item.src"  class="img"/>
                            </div>
                            <div class="rg" @click="hrefWWW(item.href)">
                                 {{item.title}}
                            </div>
                            <div class="cen" @click="hrefWWW(item.href)">
                                了解详情  >>>
                            </div>
                            
                        </div>
                    </div>
                    <div class="box2">
                        <div class="mvcontent">
                            <div class="movie" @click="playmv(1)">
                                <img src="@/assets/img/qtjxy/mv1.jpeg" width="270px" height="140px"/>
                                <img src="@/assets/img/qtjxy/play.png" class="playbtn"/>
                                <div class="bgblack"></div>
                            </div>
                            <div class="mv-title">
                                企投新物种：懂产业更懂投资
                            </div>
                        </div>
                        <div class="mvcontent2">
                            <div class="movie" @click="playmv(2)">
                                <img src="@/assets/img/qtjxy/mv2.jpeg" width="270px" height="140px"/>
                                <img src="@/assets/img/qtjxy/play.png" class="playbtn"/>
                                <div class="bgblack"></div>
                            </div>
                            <div class="mv-title">
                                大咖导师云集<br>
                                助力成就中国卓越企投家
                            </div>
                        </div>
                        
                    </div>
                    <div style="clear:both"></div>
                    
                </div>
        </div>

        <div class="teacher-main">
            <div class="teacher-box">
                <div class="box-title">
                    <h3>实战导师</h3>
                    <p>知行合一，大师带路</p>
                </div>
                <div class="box-img-grounp">
                    <div class="leftsigle">
                        <img src="@/assets/img/qtjxy/left.png"  width="100%" class="img" @click="changeteadata(0)"/>
                    </div>
                    <div class="rightsigle">
                        <img src="@/assets/img/qtjxy/right.png"  width="100%" class="img" @click="changeteadata(1)"/>
                    </div>
                    <div class="teabox">
                        <div class="centersigle" v-for="item in teaList" :key="item.index">
                            <div class="people" v-for="ite in item" :key="ite.index">
                                <div class="">
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
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>
        <div class="sz-main">
            <div class="sz-box">
                <h3>实战教学，多维落地</h3>
                <div class="box-body intr-img">
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx1.png"  width="100%"/></dt>
                        <dd>资本相亲会</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx2.png"  width="100%"/></dt>
                        <dd>沙盘模拟实战</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx3.png" width="100%" /></dt>
                        <dd>商业模拟画布</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx4.png"  width="100%"/></dt>
                        <dd>闭门私房话</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx5.png"  width="100%"/></dt>
                        <dd>私董课堂</dd>
                    </dl>
                </div>
                <div class="box-body intr-img  mgr-55">
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx6.png"  width="100%"/></dt>
                        <dd>导师下午茶</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx7.png"  width="100%"/></dt>
                        <dd>学员案例解析</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx8.png" width="100%" /></dt>
                        <dd>名企参访</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx9.png"  width="100%"/></dt>
                        <dd>海外游学</dd>
                    </dl>
                    <dl>
                        <dt><img src="@/assets/img/qtjxy/jx10.png"  width="100%"/></dt>
                        <dd>更多实训 持续更新</dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="dg-main">
            <div class="dg-box">
                <div class="box-title">
                     <h3>行业佼佼者，与君同行</h3>
                    <p>历届杰出企投人物</p>
                </div>
                <div class="box-img-tab">
                    <div class="jtbox1" :style="{'backgroundImage':(dgtype==1?'url(' + jt1 + ')':'url(' + jt3 + ')' )}" @click="changedgtype(1)">
                        <div class="word">
                            2020年度企投人物
                        </div>
                    </div>
                    <div class="jtbox2" :style="{'backgroundImage':(dgtype==2?'url(' + jt2 + ')':'url(' + jt4 + ')' )}" @click="changedgtype(2)">
                        <div class="word">
                            2019年度企投人物
                        </div>
                    </div>
                    <div class="jtbox3" :style="{'backgroundImage':(dgtype==3?'url(' + jt2 + ')':'url(' + jt4 + ')' )}" @click="changedgtype(3)">
                        <div class="word">
                            2018年度企投人物
                        </div>
                    </div>
                </div>
                <div class="box-img-grounp">
                    <div class="leftsigle">
                        <img src="@/assets/img/qtjxy/left.png"  width="100%" class="img" @click="changedgdata(0)"/>
                    </div>
                    <div class="rightsigle">
                        <img src="@/assets/img/qtjxy/right.png"  width="100%" class="img" @click="changedgdata(1)"/>
                    </div>
                    <div>
                        <div class="centersigle" v-for="item in dgList" :key="item.index">
                            <div class="people" v-for="ite in item" :key="ite.index">
                                <div  class="peoplebox" v-bind:style="{backgroundImage: 'url(' + ite.src + ')'}">
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
                    <div class="bottombox">
                        <div class="title">
                            年度企投人物
                        </div>
                        在企投会千名会员中，每年只有10位会员能获此殊荣，<br> 
                        他们是各自领域的企投佼佼者， <br> 
                        拥有非凡的创新能力、企业变革决断力及推动力、敏锐洞察力和优异的投资能力，富有社会责任感。 <br> 
                        他们是企投家精神和实力的强象征，一栖于钟爱的实体企业，一栖于繁荣的资本市场。<br> 
                    </div>
                    <div style="clear:both"></div>
                </div>
               
            </div>
            
        </div>
        <div class="map-main">
            <div class="map-box">
                <div class="box-title">
                    <h3>千人级交互式学习社群</h3>
                    <p>高朋满座，企投世界</p>
                </div>
                <div class="map-body">
                    <img src="@/assets/img/qtjxy/pic_4.png" class="img" />
                </div>
                <div class="applybtn">
                    <a class="btn" target="_blank" href="https://jinshuju.net/f/EquieW?x_field_1=%E5%AE%98%E7%BD%91"><img src="@/assets/img/qtjxy/btn.png"  width="100%"/></a>
                </div>
            </div>
        </div>
        <el-dialog     title :visible.sync="dialogVisible" width="50%"  class="eldilog" >
         <video :src="videoUrl" controls autoplay class="video" 
         width="100%" v-if="dialogVisible"></video>
      </el-dialog>
    </div>
</template>
<script>
export default {
    data() {
        return{
            bannerUrl1:require('@/assets/img/qtjxy/bg1.jpg'),
            bannerUrl2:require('@/assets/img/qtjxy/bg2.jpeg'),
            bannerUrl3:require('@/assets/img/qtjxy/bg3.jpeg'),
            bannerUrl4:require('@/assets/img/qtjxy/bg4.png'),
            videoUrl:'',
            videoUrl1:"http://7dian7fenlab.oss-cn-hangzhou.aliyuncs.com/test/%E7%89%A9%E7%A7%8D%E8%B5%B7%E6%BA%90%EF%BC%88%E6%96%B0%EF%BC%89.mp4",
            videoUrl2:"http://7dian7fenlab.oss-cn-hangzhou.aliyuncs.com/test/%E5%AF%BC%E5%B8%88%E7%89%87%E6%8D%A2logo.mp4",
            dialogVisible: false,
            type:1,
            dgtype:1,
            teatype:1,   
            jt1: require('@/assets/img/qtjxy/jt1.png'),
            jt2: require('@/assets/img/qtjxy/jt2.png'),
            jt3: require('@/assets/img/qtjxy/jt3.png'),
            jt4: require('@/assets/img/qtjxy/jt4.png'),
            dtsList:[
                {
                    src: require('@/assets/img/qtjxy/dt1.png'),
                    title: '企投会的正确打开方式',
                    href:"https://mp.weixin.qq.com/s/plmY93Qu6E_ty8EdCWUu9A",
                },
                {
                    src: require('@/assets/img/qtjxy/dt2.png'),
                    title: '企业投资时代，我们在寻找“企业投资家” ',
                    href:"https://mp.weixin.qq.com/s/fUDz4HGlAgoyqZRn0IFvDA",
                },
                {
                    src: require('@/assets/img/qtjxy/dt3.png'),
                    title: '潮起何处，全球企投家峰会与你相约3月28日',
                    href:"http://mp.weixin.qq.com/s?__biz=MzI2NzY4NTM0OA==&mid=100017388&idx=1&sn=ed2070c9f394aa8159116861829f0ae3&chksm=6af998675d8e1171bb4d73ce815ddab11bcd41f1897ca3224b1af85e5db926682ec283e9305d#rd",
                },
                {
                    src: require('@/assets/img/qtjxy/dt4.png'),
                    title: '2020企投家年终盛典大咖云集，共话2021年经济新机遇',
                    href:"http://cn.chinadaily.com.cn/a/202012/31/WS5fedb0c4a3101e7ce9738a18.html",
                },

            ],
            dgList:[],
            alldgList:[
                [
                    {
                        src: require('@/assets/img/qtjxy/dg1.png'),
                        name: '胡兵',
                        dic:["天津睿和","税务师事务所有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg2.png'),
                        name: '冯琏',
                        dic:["上海妙宅科技发展有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg3.png'),
                        name: '于文福',
                        dic:["丹东华洋纺织服装有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg4.png'),
                        name: '曾庆诩',
                        dic:["广州千誉智能科技有限公司","总经理"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg5.png'),
                        name: '陈秉华',
                        dic:["葆蒂兰（上海）","投资管理有限公司","董事长"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/dg6.png'),
                        name: '郭利通',
                        dic:["广东中煌建筑工程有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg7.png'),
                        name: '李文娟',
                        dic:["印步(北京）软件有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg8.png'),
                        name: '陈嘉兵',
                        dic:["贵州道湘聚","国际贸易（集团）有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg9.png'),
                        name: '赵玉刚',
                        dic:["上海巨盾律师事务所","创始人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg10.png'),
                        name: '符圣彪',
                        dic:["海南冻品","云供应链科技有限公司","董事长"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/dg11.png'),
                        name: '杜军',
                        dic:["河南省钱币有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg12.png'),
                        name: '刘光达',
                        dic:["厦门厦芝科技工具有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg13.png'),
                        name: '薛志',
                        dic:["天成致远有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg14.png'),
                        name: '李玉娟',
                        dic:["深圳通利华集团","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg15.png'),
                        name: '王坤爱',
                        dic:["福建正坤投资集团有限公司","董事长"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/dg16.png'),
                        name: '王益和',
                        dic:["上海益和源","资产管理有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg17.png'),
                        name: '成健',
                        dic:["上海赢华投资","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg18.png'),
                        name: '卢志明',
                        dic:["勐海巅茶茶业有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg19.png'),
                        name: '卜杰林',
                        dic:["上海恒道","国际物流股份有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg20.png'),
                        name: '王宇飞',
                        dic:["常州富兴机电有限公司","董事长"]
                    }, 
                ],


                [
                    {
                        src: require('@/assets/img/qtjxy/dg21.png'),
                        name: '陈九霖',
                        dic:["北京约瑟投资有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg22.png'),
                        name: '郭东',
                        dic:["深圳市巨邦科技发展有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg23.png'),
                        name: '杨锐',
                        dic:["双登集团股份有限公司","总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg24.png'),
                        name: '赵劲洪',
                        dic:["和利冰厂（武汉）食品有限公司","董事"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg25.png'),
                        name: '龚飞',
                        dic:["广州思齐教育投资有限公司","董事长"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/dg26.png'),
                        name: '蒋晓冬',
                        dic:["新宏昌重工集团","总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg27.png'),
                        name: '沈雁伟',
                        dic:["浙江凯耀照明股份有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg28.png'),
                        name: '葛泓',
                        dic:["江苏保捷集团公司","创始人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg29.png'),
                        name: '吕俊涛',
                        dic:["呐客物联科技股份有限公司","董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/dg30.png'),
                        name: '于教清',
                        dic:["上海祥腾投资有限公司","董事长"]
                    }, 
                ],

            ],
            teaList:[],
            allteaList:[
                [
                    {
                        src: require('@/assets/img/qtjxy/1.png'),
                        name: '吴晓波',
                        dic:["企投会理事长","财经作家"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/2.png'),
                        name: '潘跃新',
                        dic:["君合律师事务所荣誉合伙人","律派巨匠律师机构董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/3.png'),
                        name: '管清友',
                        dic:["如是金融董事长、研究院院长","首席经济学家","前民生证券副总裁、研究院院长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/4.png'),
                        name: '曹国熊',
                        dic:["普华资本董事长","头头是道基金创始人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/5.png'),
                        name: '蒋海涛',
                        dic:["摩根资本管理有限公司董事总经理","原摩根大通亚太区高级副总裁"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/6.png'),
                        name: '崔洪波',
                        dic:["正见品牌顾问首席执行官","首席品牌顾问、 项目总顾问"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/7.png'),
                        name: '邓伟岩',
                        dic:["原天风证券财富中心总经理"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/8.png'),
                        name: '张其亮',
                        dic:["鑫苑科技集团首席架构师","原思科大中华区金融行业","首席架构师"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/9.png'),
                        name: '徐朝华',
                        dic:["和恒（北京）咨询公司董事长","国际注册管理咨询师"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/10.png'),
                        name: '朱民',
                        dic:["清华大学国家金融研究院院长","国际货币基金组织前副总裁"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/11.png'),
                        name: '张宇燕',
                        dic:["中国社科院世界政治与经济","研究所所长","中国世界经济学会会长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/12.png'),
                        name: '何茂春',
                        dic:["国务院参事","清华大学经济外交研究中心主任"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/13.png'),
                        name: '金一南',
                        dic:["国防大学战略教研部教授","战略学博士生导师","中国人民解放军少将军衔，正军级"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/14.png'),
                        name: '张燕生',
                        dic:["中国国际经济交流中心首席研究员","原国家发改委学术委员会秘书长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/15.png'),
                        name: '姚景源',
                        dic:["国务院参事室特约研究员","原国家统计局总经济师"]
                    }, 
                ],
                [
                    {
                        src: require('@/assets/img/qtjxy/16.png'),
                        name: '何帆',
                        dic:["上海交通大学安泰经济与管理学院教授","原中国社会科学院","世界政治与经济研究所副所长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/17.png'),
                        name: '曹和平',
                        dic:["经济学家","北京大学经济学院教授","博士生导师"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/18.png'),
                        name: '许思涛',
                        dic:["德勤中国首席经济学家"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/19.png'),
                        name: '陈凌',
                        dic:["浙江大学企业家学院院长","浙江大学城市学院家族企业研究所所长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/20.png'),
                        name: '何伯权',
                        dic:["今日投资","乐百氏创始人"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/21.png'),
                        name: '朱海',
                        dic:["智数资本高级合伙人","原施耐德电气全球执行副总裁","中国区总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/22.png'),
                        name: '王茁',
                        dic:["原上海家化CEO","磐缔资本创始合伙人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/23.png'),
                        name: '周忻',
                        dic:["易居（中国）控股有限公司","董事局主席、总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/24.png'),
                        name: '卫哲',
                        dic:["嘉御基金创始合伙人、董事长","原阿里巴巴 CEO"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/25.png'),
                        name: '江南春',
                        dic:["分众传媒创始人","董事局主席兼CEO"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/26.png'),
                        name: '张江',
                        dic:["平安好医生资深副总裁","兼首席投资官","平安集团投资决策委员会委员","上交所首届科创板咨询委委员"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/27.png'),
                        name: '杨文斌',
                        dic:["原平安、太平洋保险公司CIO","台大客座教授","香港大学中国商业学院讲师"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/28.png'),
                        name: '唐斌',
                        dic:["复星全球合伙人","复星国际首席投资官","复星国际高级副总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/29.png'),
                        name: '王晓鹏',
                        dic:["纽尔利资本董事总经理","原京东汇禾资本管理合伙人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/30.png'),
                        name: '沈劲',
                        dic:["高通全球副总裁","高通创投董事总经理"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/31.png'),
                        name: '张雨柏',
                        dic:["苏酒集团（洋河股份）原董事局主席"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/32.png'),
                        name: '席刚',
                        dic:["新希望乳业董事长","草根知本集团总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/33.png'),
                        name: '袁冰',
                        dic:["TCL创投董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/34.png'),
                        name: '王仁荣',
                        dic:["百威中国投资有限公司董事长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/35.png'),
                        name: '王煜全',
                        dic:["海银资本创始合伙人","全球科技创新产业专家"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/36.png'),
                        name: '肖冰',
                        dic:["达晨创投执行合伙人、总裁","达晨财智执行合伙人、总裁"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/37.png'),
                        name: '洪伟力',
                        dic:["原歌斐资产管理合伙人","原华人文化控股集团总裁兼CRO"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/38.png'),
                        name: '张超',
                        dic:["众晖资本董事长","创始管理合伙人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/39.png'),
                        name: '张奥平',
                        dic:["如是资本董事总经理","如是金融研究院副院长"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/40.png'),
                        name: '王坤',
                        dic:["英诺天使基金运营合伙人","以正合咨询创始人"]
                    }, 
                ],

                [
                    {
                        src: require('@/assets/img/qtjxy/41.png'),
                        name: '许焕章',
                        dic:["上海交通大学海外学院","连锁品牌战略研究所所长","国际品牌策略规划与营销策划专家"]
                    }, 
                     {
                        src: require('@/assets/img/qtjxy/42.png'),
                        name: '陈科',
                        dic:["安踏集团首席运营官"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/43.png'),
                        name: '康勇',
                        dic:["毕马威中国首席经济学家"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/44.png'),
                        name: '赵今巍',
                        dic:["方正多策投资合伙人","前盛景集团战略投资","直投基金主管合伙人"]
                    }, 
                    {
                        src: require('@/assets/img/qtjxy/45.png'),
                        name: '芮斌',
                        dic:["芮邦投资董事长","厦门好利来电子CEO","原华为终端首席战略官"]
                    }, 
                ],
            ]
        }
    },
    mounted(){
        this.teaList=this.allteaList.slice(0,4);
        this.dgList=this.alldgList.slice(0,2);
    },
    methods:{
        playmv(type){
            if(type==1){
                this.videoUrl=this.videoUrl1;
            }else{
                this.videoUrl=this.videoUrl2;
            }
            this.dialogVisible=true;
        },
        hrefWWW(url) {
            var tempwindow=window.open('_blank');
            tempwindow.location=url;
        },
        changedgtype(type){
            if(this.dgtype!=type){
                this.dgtype=type;
                this.dgList=this.alldgList.slice((this.dgtype-1)*2,this.dgtype*2);
            }
        },
        changeteadata(type){
            if(type==0){
                if(this.teatype!=1){
                    this.teatype--;
                    this.teaList=this.allteaList.slice((this.teatype-1)*4,this.teatype*4);
                    
                }
            }else{
                if(this.teatype!=3){
                    this.teatype++;
                    this.teaList=this.allteaList.slice((this.teatype-1)*4,this.teatype*4);
                }
            }
        },
        changedgdata(type){
            if(type==0){
                if(this.dgtype!=1){
                    this.dgtype--;
                    this.dgList=this.alldgList.slice((this.dgtype-1)*2,this.dgtype*2);
                    
                }
            }else{
                if(this.dgtype!=3){
                    this.dgtype++;
                    this.dgList=this.alldgList.slice((this.dgtype-1)*2,this.dgtype*2);
                }
            }
        },
        changetea(type){
            if(type==0){
                if(this.type!=1){
                    this.type--;
                }
            }else{
                if(this.type!=3){
                    this.type++;
                }
            }
        }
  },

}
</script>
<style lang="scss" scoped>
.eldilog >>> .el-dialog__body{
    padding: 0px;
}
.eldilog >>> .el-dialog__header{
     padding: 0px;
}
.qtjxy-main{
    .main-box{
        position: relative;
        .qtjxy-head{
             float: left;
             width: 522px;
            margin-right: 89px;
            margin-top: 49px;
            .logo{
                padding-bottom: 20px;
            }
            .qth-title{
                height: 18px;
                font-size: 18px;
                font-family: Source Han Sans CN;
                font-weight: bold;
                color: #F29600;
                line-height: 30px;
                padding-bottom: 20px;
            }
            text-align: justify;
            font-size: 14px;
            font-family: Source Han Sans CN;
            font-weight: 400;
            color: #232323;
            p{
                padding-top: 49px;
                line-height: 30px;
                padding-bottom: 71px;
            }
        }
        .qtjxy-img{
            // float: left;
            width:476px;
            position: absolute;bottom: 0px;right: 0px;
            .img{
               width:476px;
                height:495px;
            }
        }
    }
}
.bg-main{
    position: relative;
    width: 100%;
    height: 634px;
    .bg-box{
        width: 100%;
        height: 100%;
        background-position: center center;
        background-size: auto 100%;
        background-repeat: no-repeat;
    }
    .headbtn{
        position:absolute;
        bottom:42px;
        // left:0;
        // right:0;
        // margin: auto;
        width: 100%;
        text-align:center;
        .btn{
            display: inline-block;;
            width:257px;
            height: 69px;
        }
    }
}
.mgr-55{
    margin-top: 55px;
}
.midel-main{
    height: 78px;
    background: #EEEEEE;
    .midel-box{
        width: 1100px;
        margin: 0 auto;
        height: 78px;
        width: 1100px;
        margin: 0 auto;
        .backclick{
            background: #F29600;
        }
            /*箭头向下*/
        .boxsigle {
            position: relative;
            margin-top: 29px;
            margin-left: 123px;
            z-index: 99;
            bottom: 0px;
                width:0;
                height:0;
                border-left:12px solid transparent;
                border-right:12px solid transparent;
                border-top:15px solid #F29600;
        }
        .siglebox{
            height: 78px;
            width: 25%;
            background: #EEEEEE;
            padding:29px 0px;
            float: left;
            cursor: pointer;
            .titlemidel{
                height: 20px;
                text-align: center;
                line-height: 20px;
                border-right: 1px solid #000000;
                .word{
                    width:100%;
                    height:20px ;
                    font-size: 20px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #000000;
                    
                }
            }
            // .titlemidel2{
            //     height: 20px;
            //     text-align: center;
            //     line-height: 20px;
            //     border-left: 1px solid #000000;
            //     border-right: 1px solid #000000;
            //     .word{
            //         width:100%;
            //         height:20px ;
                    
            //         font-size: 20px;
            //         font-family: Source Han Sans CN;
            //         font-weight: bold;
            //         color: #000000;
                    
            //     }
            // }
        }
        
        
    }
}
.dt-main{
    background: #fff;
    .dt-grounp{
        width: 1150px;
        margin: 0 auto;
        height: 750px;
        .title1{
            width: 723px;
            float: left;
            height: 147px;
            font-size: 18px;
            font-family: Source Han Sans CN;
            font-weight: bold;
            color: #F29600;
            line-height: 147px;

        }
        .title2{
            width: 368px;
            float: left;
            margin-left: 59px;
            height: 147px;
            font-size: 18px;
            font-family: Source Han Sans CN;
            font-weight: bold;
            color: #F29600;
            line-height: 147px;
        }
        .box1{
            height: 530px;
            width:723px ;
            float: left;
            background: hsl(0, 0%, 93%);
            border-radius: 7px;
            padding: 36px 32px;
            .box1-grounp{
                margin-bottom: 22px;
                height: 98px;
                position: relative;
                .lf{
                    float: left;
                    width:164px;
                    height: 98px;
                    .img{
                        width:100%;
                        height: 100%;
                    }
                }
                .rg{
                    cursor: pointer;
                    margin-left: 197px;
                    height: 98px;
                    font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #1D1D1D;
                    line-height: 98px;
                }
                .cen{
                        cursor: pointer;
                        font-size: 14px;
                        font-family: Source Han Sans CN;
                        font-weight: 400;
                        color: #1D1D1D;
                        position: absolute;
                        bottom:0px;
                        right:18px;
                }
            }
        }
        .box2{
           margin-left: 59px;
           height: 530px;
           width:368px ; 
           float: left; 
           background: #EEEEEE;
           border-radius: 7px;
           padding:41px 49px;
           .mvcontent{
               .movie{
                   position: relative;
                   cursor: pointer;
                    .playbtn{
                        position: absolute;
                        left: 50%;
                        top: 50%;
                        transform: translate(-50%,-50%);
                        width: 61px;
                        height: 61px;
                        z-index: 3;
                    }
                    .bgblack{
                        position: absolute;
                        top: 0;
                        width: 100%;
                        height: 100%;
                        background: rgba(0, 0, 0, 0.5);
                        z-index: 2;
                    }
               }
               .mv-title{
                   margin-top: 18px;
                   text-align: center;
                   font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #1D1D1D;
               }
           }
           .mvcontent2{
               margin-top:36px;
               .movie{
                    position: relative;
                   cursor: pointer;
                    .playbtn{
                        position: absolute;
                        left: 50%;
                        top: 50%;
                        transform: translate(-50%,-50%);
                        width: 61px;
                        height: 61px;
                        z-index: 3;
                    }
                    .bgblack{
                        position: absolute;
                        top: 0;
                        width: 100%;
                        height: 100%;
                        background: rgba(0, 0, 0, 0.5);
                        z-index: 2;
                    }
               }
               .mv-title{
                   margin-top: 18px;
                   text-align: center;
                   font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #1D1D1D;
               }
           }
        }
    }
}
.dg-main{
    height: 1080px;
    background: #F7F7F7;
    .dg-box{
        width: 1200px;
        margin: 0 auto;
        .box-title{
            padding-top: 72px;
            h3{
                height: 17px;
                font-size: 18px;
                font-family: Source Han Sans CN;
                font-weight: bold;
                color: #F29600;
                line-height: 30px;
            }
            p{
                margin-top: 20px;
                height: 14px;
                font-size: 14px;
                font-family: Source Han Sans CN;
                font-weight: 400;
                color: #232323;
                line-height: 30px;

            }
        }
        .box-img-tab{
            margin-top: 61px;
            margin-bottom: 28px;
            width: 100%;
            height: 40px;
            cursor: pointer;
            .jtbox1{
                float: left;
                width: 199px;
                height: 40px;
                background-size:100% 100% ;
                background-repeat: no-repeat;
                .word{
                    text-align: center;
                    font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #FFFFFF;
                    line-height: 40px;
                }
            }
            .jtbox2{
                float: left;
                width: 199px;
                height: 40px;
                background-size:100% 100% ;
                background-repeat: no-repeat;
                .word{
                    text-align: center;
                    font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #FFFFFF;
                    line-height: 40px;
                }
                
            }
            .jtbox3{
                float: left;
                 width: 199px;
                height: 40px;
                background-size:100% 100% ;
                background-repeat: no-repeat;
                .word{
                    text-align: center;
                    font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #FFFFFF;
                    line-height: 40px;
                }
                
            }
        }
        .box-img-grounp{
        margin-top: 28px;
        height: 544px;
        .leftsigle{
            float: left;
            height: 544px;
            width: 30px;
            line-height: 544px;
            .img{
                vertical-align: middle;
                cursor: pointer;
            }
        }
        .rightsigle{
            float: right;
            height: 544px;
            width: 30px;
            line-height: 544px;
            .img{
                vertical-align: middle;
                cursor: pointer;
            }
        }
        .centersigle{
            margin:23px 33px;
            display: flex;
            .people{
                width: 20%;
                text-align: center;
                .peoplebox{
                    height: 272px;
                    width: 208px;
                    background-size:100% 100% ;
                    background-repeat: no-repeat;
                    position: relative;
                    .info{
                        position:absolute;
                        left: 0;
                        right: 0;
                        margin: auto;
                        top:164px;
                        font-size: 14px;
                        font-family: Source Han Sans CN;
                        color: #232323;
                        line-height: 24px;
                        .name{
                            font-size: 18px;
                            font-weight: bold;
                            color: #F29600;
                        }

                    }  
                }               
            }
        }
        .bottombox{
            margin-top: 60px;
                    text-align: center;
                    font-size: 14px;
                    font-family: Source Han Sans CN;
                    font-weight: 400;
                    color: #232323;
                    line-height: 30px;
                    .title{
                        font-size: 18px;
                        font-family: Source Han Sans CN;
                        font-weight: bold;
                        color: #2D479A;
                        line-height: 30px;
                    }
                    
                }
    }
    }
}
.teacher-main{
    height: 1287px;
    background: #F7F7F7;
    .teacher-box{
        width: 1180px;
        margin: 0 auto;
         
    .box-title{
        padding-top: 72px;
        h3{
            height: 17px;
            font-size: 18px;
            font-family: Source Han Sans CN;
            font-weight: bold;
            color: #F29600;
            line-height: 30px;
        }
        p{
            margin-top: 20px;
            height: 14px;
            font-size: 14px;
            font-family: Source Han Sans CN;
            font-weight: 400;
            color: #232323;
            line-height: 30px;

        }
    }
    .box-img-grounp{
        margin-top: 78px;
        height: 912px;
        padding-bottom: 87px;
        .leftsigle{
            float: left;
            height: 912px;
            width: 30px;
            line-height: 912px;
            .img{
                vertical-align: middle;
                cursor: pointer;
            }
        }
        .rightsigle{
            float: right;
            height: 912px;
            width: 30px;
            line-height: 912px;
            .img{
                vertical-align: middle;
                cursor: pointer;
            }
        }
        .centersigle{
            margin:23px 33px;
            display: flex;
            .people{
                width: 20%;
                text-align: center;
                .img{
                    width: 108px;
                }
                .info{
                    padding-top: 21px;
                    font-size: 14px;
                    font-family: Source Han Sans CN;
                    color: #232323;
                    line-height: 24px;
                    .name{
                        font-size: 18px;
                        font-weight: bold;
                    }

                }                
            }
        }
    }
    }
}

.sz-main{
    background: #fff;
    height: 592px;
    .sz-box{
        width: 1150px;
        margin: 0 auto;
        h3{
            margin: 73px 0px  64px 0px;
            height: 17px;
            font-size: 18px;
            font-family: Source Han Sans CN;
            font-weight: bold;
            color: #F29600;
        }  
        .intr-img{
            overflow: hidden;
            display: flex;
            dl{
                width: 214px;
                float: left;
                overflow: hidden;
                margin-right: 20px;
                &:nth-child(5n){
                    margin-right: 0;
                }
                dt{
                    width: 214px;
                    height: 122px;
                    overflow: hidden;
                    img{
                        width: 100%;
                        height: 100%;
                    }
                }
                dd{
                    line-height: 24px;
                    text-align: center;
                    padding: 15px 0;
                    font-size: 18px;
                    font-family: Source Han Sans CN;
                    font-weight: bold;
                    color: #1E316F;
                }
            }
        }  
    }
}
.map-main{
    background: #fff;
    .map-box{
        width: 1180px;
        margin: 0 auto;
        .box-title{
            padding-top: 73px;
            h3{
                height: 17px;
                font-size: 18px;
                font-family: Source Han Sans CN;
                font-weight: bold;
                color: #F29600;
                line-height: 30px;
            }
            p{
                margin-top: 19px;
                height: 14px;
                font-size: 14px;
                font-family: Source Han Sans CN;
                font-weight: 400;
                color: #232323;
                line-height: 30px;

            }
        }
        .map-body{
            width:1105px;
            margin-top: 40px;
            padding-left: 25px;
            .img{
                height: 670px;
            }
        }
        
        .applybtn{
            margin:72px 0px;
            width: 100%;
            text-align:center;
            .btn{
                display: inline-block;
                width: 256px;
                height: 68px;
            }
        }
        
    }
}
</style>