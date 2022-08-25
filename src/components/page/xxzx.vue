<template title="新鲜资讯">
  <div class="xxzx-wrap">
    <div class="breadcrumb-wrap">
      <div class="main-box breadcrumb-item">
        <span>新鲜资讯</span>
      </div>
    </div>
    <div class="main-box">
      <div class="xxzx-list">
        <!-- 1 -->
        <dl class="list-item clearfix" v-for="item in pageList" :key="item.index">
          <dt class="list-pic">
            <a :href="item.href" target="_blank">
              <el-image :src="item.src" lazy>
                <div slot="error" class="image-slot">
                  加载失败<span class="dot">...</span>
                </div>
                <div slot="placeholder" class="image-slot">
                  加载中<span class="dot">...</span>
                </div>
              </el-image>
            </a>
          </dt>
          <dd class="list-intr">
            <!-- <a :href="item.href" target="_blank">
              <h4>{{item.title}}</h4>
              <h6>{{item.subTit}}</h6>
              <p v-html="item.intr">{{item.intr}}</p>
              </a> -->
            <h4><a :href="item.href" target="_blank">{{item.title}}</a></h4>
            <h6><a :href="item.href" target="_blank">{{item.subTit}}</a></h6>
            <a :href="item.href" target="_blank">
              <p v-html="item.intr">{{item.intr}}</p>
            </a>
          </dd>
        </dl>
        <!-- 1 end -->
        <div class="pagination">
            <el-pagination background @current-change="handleCurrentChange"
              layout="total, pager" :total="total" :current-page="cuPage">
            </el-pagination>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      //新鲜资讯
      pageList:[],
      cuPage:1,
      total:0,
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
        }, 
         {
          src: require('@/assets/img/xxzx/new/5.jpg'),
          href: 'https://mp.weixin.qq.com/s/2tU_k4A7EO7h68xY69l4qQ',
          title: '这些被困在时间舱里的人们',
          subTit: '#《吴聊》直播秀',
          intr: '5月8日开始的一周里，我会跟这些读书人朋友聊几次天。欢迎你来我的视频号直播间围观旁听、参与讨论。'
        }, 
         {
          src: require('@/assets/img/xxzx/new/6.jpg'),
          href: 'https://mp.weixin.qq.com/s/eHvxV771weX5JO4Axi0Jew',
          title: '30多位嘉宾、1000名企投家，他们花一天时间谈了什么？',
          subTit: '#第三届全球企投家峰会暨全球企投家日',
          intr: '3月28日，由890新商学企投会主办的“潮起何处 | 第三届全球企投家峰会暨全球企投家日”在上海举办，大会邀请到30多位专家学者、企业高管、投资大咖到场，与1000多名企投家齐聚一堂。'
        }, 

         {
          src: require('@/assets/img/xxzx/new/7.jpg'),
          href: 'https://mp.weixin.qq.com/s/ZV7jm_qXCQ2ZGme9MNn1Tg',
          title: '国货的黄金十年，才刚开始？',
          subTit: '#新匠人新国货促进会',
          intr: '一切活的事物都在寻求更加美好的世界，与1000+创始人同行。'
        }, 
        //以上为新加的

        {
          src: require('@/assets/img/xxzx/1.jpg'),
          href: 'https://mp.weixin.qq.com/s/h3bDM6FTOSciwVDRfRgHRQ',
          title: '不再只卖情怀的新国货，靠什么出圈？',
          subTit: '#金物奖盛典2020',
          intr: '金物奖有三个评选标准，叫做新审美，新机遇，新链接。第一你得具备新审美，颜值让年轻人喜欢。第二，任何产品都要有技术微创新，新的技术爆点。第三要与消费者有新的触达方式。'
        }, 
        {
          src: require('@/assets/img/xxzx/2.jpg'),
          href: 'https://mp.weixin.qq.com/s/VgxwvSN-mRnPExMLlo1xbg',
          title: '未来5年决定中国未来50年？',
          subTit: '#2020企投家年终盛典',
          intr: '“2020年确实很难，但我们总算是熬过来了。2021年还会有很多产业发展的新机会。”企投会理事长、财经作家吴晓波在2020年企投家年终盛典上这样说道。'
        }, 
        {
          src: require('@/assets/img/xxzx/3.jpg'),
          href: 'https://mp.weixin.qq.com/s/jx2lJVgFyTswKB1HkgqDHg',
          title: '2021新匠人品牌崛起，还有1.5亿个新机会 ',
          subTit: '#新匠人盛典',
          intr: '据国家统计局统计，1995年-2002年之间，我国新出生人口为1.5亿。“他们是任何行业不能丢掉的顾客，2021年新匠人品牌IP崛起的新机会也将围绕这1.5亿人……”'
        }, 
        {
          src: require('@/assets/img/xxzx/4.jpg'),
          href: 'https://mp.weixin.qq.com/s/CAq1XecePe9wBzgy1P7Ljw',
          title: '超950万观看、金句频频，首场新国货跨年直播秀太“秀”了！',
          subTit: '#新国货跨年直播秀',
          intr: '12月31日，吴晓波频道×天猫国潮×淘宝直播联合打造新国货跨年直播秀在淘宝“吴晓波-新国货首发”&“天猫新国货”直播'
        }, 
        {
          src: require('@/assets/img/xxzx/5.jpg'),
          href: 'https://mp.weixin.qq.com/s/CAkZ9C2W9pnK0dJ1Rg4d_A',
          title: '2021年，从124名90后开始...... ',
          subTit: '#90门年终盛典',
          intr: '2020年12月31日，90门年终盛典在厦门举行，在海边，一群有趣、有料的90后展示着年轻人的蓬勃朝气，也展望着未来十年的美好愿景。'
        }, 
        {
          src: require('@/assets/img/xxzx/6.jpg'),
          href: 'https://mp.weixin.qq.com/s/1reqhpuziQBTXwyBa-GyzQ',
          title: '吴晓波：预见2021（跨年演讲全文）',
          subTit: '#吴晓波年终秀',
          intr: '面向2021年，我们仍然要以一颗勇敢的心，使出全部的力量往前冲，不要回头，如此一来，我们将看到原本看不到的东西。'
        }, 
        {
          src: require('@/assets/img/xxzx/7.jpg'),
          href: 'https://mp.weixin.qq.com/s/sRNvn3y0mpfv3SGGx9XBeg',
          title: '365天，400场活动 ',
          subTit: '#公开课',
          intr: '我们把全国各地一些素不相识却又充满能量的人连接在一起。他们在自己的城市举办活动，传播知识，用自己的小磁场让公开课成为一个充满能量的知识传播平台。'
        }, 
        {
          src: require('@/assets/img/xxzx/8.jpg'),
          href: 'https://mp.weixin.qq.com/s/nLNaILR6wWyZIIHIzKWqew',
          title: '直播间里那个颠倒的真实世界',
          subTit: '#直播启示录',
          intr: '有时候我们看到的，只是手机里小小的方寸，但它背后那个颠倒的、扭曲的、混乱的、喧嚣的、生机勃勃的，才是真实的世界。'
        }, 
        {
          src: require('@/assets/img/xxzx/9.jpg'),
          href: 'https://mp.weixin.qq.com/s/wpjnL0bljkyYWG9yiq6MKA',
          title: '00后生活在网上，20后生活在云上',
          subTit: '#云上的生活',
          intr: '12月28日，数字创新纪录片《云上的中国》在人民网、优酷、今日头条、网易公开课同步首发，纪录片分为三集——数字商业、数字生产、数字城市'
        }, {
          src: require('@/assets/img/xxzx/10.jpg'),
          href: 'https://mp.weixin.qq.com/s/cnyvd0NnNpaWeO0AJhA3qg',
          title: '金物奖入围名单公布！引领下一个十年的国货在这里',
          subTit: '#金物奖',
          intr: '9月18日，吴晓波老师正式宣布金物奖启动，他说：“电影界有奥斯卡金像奖，我们希望新国货领域里也有一个‘奥斯卡’。”<br>这些奖项将表彰和奖励在中国品牌和企业崛起过程中，具备强原创力、创新力、市场回报能力的新国货产品，以及在推动新国货运动中具有突出贡献的代表人物。'
        },
        {
          src: require('@/assets/img/xxzx/11.jpg'),
          href: 'https://mp.weixin.qq.com/s/1MS_Lv9B4OoIshXi1zwtpA',
          title: '第一届中国制造高峰论坛暨中德制造业大学成立仪式',
          subTit: '#中德制造业大学',
          intr: '工业4.0汹涌而来，中国制造如何拥抱这场变革？<br>吴老师认为，在工业化、智能化的过程中，企业发生的任何迭代，都基于企业家的认知，企业家的认知高度，决定了企业到达的高度。'
        },
        {
          src: require('@/assets/img/xxzx/12.jpg'),
          href: 'https://mp.weixin.qq.com/s/6OR7aJZhOokpEF3IiNgjYw',
          title: '都2020年了，还有谁给“中国制造”丢了脸？',
          subTit: '#吴晓波头条SHOW',
          intr: '《吴晓波头条SHOW》是一档由一汽红旗H9独家冠名播出、吴晓波频道出品的科普型泛财经节目，聚焦于影响当今社会经济生活的话题和观点，从中国经济发展的底纹肌理中，秀出商业之美。'
        },
        {
          src: require('@/assets/img/xxzx/pic_7@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/P706MG6WbXwutatCoObBwQ',
          title: '六年，吴晓波频道小学毕业了！',
          subTit: '#吴晓波频道六周年',
          intr: '我们不是盆景中的上帝之花，是开放在你路过的溪水边和马路边的，这个夏至时分的鸢尾花和蔷薇花。即便凋落的时候会狼狈、会不堪，我们还是很高兴地说：对于和你们的相遇，我们也不曾妥协过。'
        },
        {
          src: require('@/assets/img/xxzx/pic_1@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/EJyuaDJpYDaqBqtOhDfuFg',
          title: '国货VS洋货：“国”虽重要，“货”更关键',
          subTit: '#新国货纪录片',
          intr: '从“地摊货”“小生意”到大规模新国货崛起；从迷信国外大牌到成为国货迷弟迷妹，国货的“真香”定律为何越来越灵？<br>国内首部品牌经济历史纪录片《新国货》，为你讲述起伏跌宕的百年国货逆袭之旅。'
        },
        {
          src: require('@/assets/img/xxzx/pic_2@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/gDjHVfVq_S9zXs4npN6bNQ',
          title: '每一个新国货品牌背后，都积淀着新匠人的情怀与匠心',
          subTit: '#新国货首发直播',
          intr: '6月29日19:00，吴老师以“新国货首发”为主题的直播顺利开启，五个多小时的直播吸引到800多万人次观看，带货品类繁多，包含食品饮料、家居家电等。<br>本次直播除了带货，另一核心带的是故事——每一个品牌背后的新匠人新国货故事。'
        },
        {
          src: require('@/assets/img/xxzx/pic_3@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/wXSKVfhjE-9DgRgHcNi1Eg',
          title: '做一个有影响的人，从这里开始',
          subTit: '#公开课招募令',
          intr: '2019年6月，我们启动了890新商学公开课计划，把全国各地一些素不相识却又充满能量的人连接在一起，他们在自己的城市举办活动，传播知识，他们希望用自己的小磁场让公开课成为一个无边界、无限链接的知识传播平台。'
        },
        {
          src: require('@/assets/img/xxzx/pic_4@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/RAMeZj_tHd1c7lqvzLYVig',
          title: '吴晓波私房课：疫情这一年，避免败局全新升级',
          subTit: '#避免败局私房课',
          intr: '吴晓波将携手四位企业问题专家带来2020全新升级课程：避免败局私房课。结合当下疫情，除了在内容和案例上做更新和升级，我们还首次打造了多维的学习模式，利用“线上+线下”的学习方式全方位解析败局原因，助力企业穿越疫情，共同打好一场企业的生存之战。'
        },
        {
          src: require('@/assets/img/xxzx/pic_5@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/ymTNcUgguhecd32mRDAM3w',
          title: '《新匠人100榜单》2.0发布：中国制造的新名片长这样',
          subTit: '#新匠人大会顺利举行',
          intr: '5月26日，新匠人新国货大会在杭州顺利举行，来自全国各地的600多位新匠人企业家聚集在一起，共同探索国货品牌的新机遇，在激荡的2020年，发掘新的可能。'
        },
        {
          src: require('@/assets/img/xxzx/pic_6@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/VSx1cbT17K2Db_VXl_ekAA',
          title: '新消费浪潮已起，你觉得自己是“前浪”还是“后浪”？',
          subTit: '#新匠人新国货促进会会员招募',
          intr: '2020年中国的商业世界发生了一个新的可能和变化，就是我们进入到了一个新的产品和品牌的新迭代过程。'
        },
        {
          src: require('@/assets/img/xxzx/pic_8@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/nu51uPXHR2f7G9m-q-EHBg',
          title: '吴晓波：《激荡2020——疫情特别演讲》全文整理',
          subTit: '#吴晓波演讲全文整理',
          intr: '我们每个人，就像大江大河中的小小扁舟，身不由己地接受时代给予我们的所有激荡，同时，也在这样的身不由己中，完成自己的更新和塑造。'
        },
        {
          src: require('@/assets/img/xxzx/pic_9@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/qYuH0Kfj1vNHHszfUF1V1w',
          title: '人均每天1元钱，建一所属于自己的企业大学',
          subTit: '#企业大学共建计划',
          intr: '我们将以知识服务商的角色，提供学习型企业建设服务，帮助每一家中小企业建设专属于自己的企业大学。'
        },
        {
          src: require('@/assets/img/xxzx/pic_10@2x.jpg'),
          href: 'https://mp.weixin.qq.com/s/LbDG_PhnfGN6M8xTs51E8w',
          title: '企投会的正确打开方式',
          subTit: '#企投家成长营招募令',
          intr: '“企投家”是兼具企业家和投资家的融合性角色，具有鲜明的两栖型特征，一栖于钟爱的实体产业，让它迭代进步，永续发展，一栖于“非理性繁荣”的资本市场，让自己的财富在运动中增值。'
        },

      ]
    }
  },
  mounted(){
    this.pageData(1);
  },
  methods:{
    // 分页导航
    handleCurrentChange(val) {
      window.scroll(0,0);
      this.cuPage=val;
      this.pageData(val);
    },
    //分页方法
    pageData(index){
      this.total=this.xxzxList.length;
      this.pageList = this.xxzxList.slice((index-1)*10,index*10);
    }
  },
}
</script>
<style lang="scss" scoped>
.xxzx-list {
  padding-top: 50px;
}
.pagination {
    text-align: center;
}
</style>