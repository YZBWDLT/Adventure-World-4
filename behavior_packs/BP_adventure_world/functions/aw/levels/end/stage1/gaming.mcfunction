# ===== 关卡游戏时时间线 =====
# 10-1 | 林乐回归

# --- 剧情 ---
# NPC 说话时会自带动作（NPC 动作：xxx 说话），除特殊标注外均为此标记。
    ## [1] 相机视角：切换视角
    ## [60] NPC 动作：玩家挥手
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊！我成功了！这就是旷野之剑！"}]}
    execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐——！刚刚我怎么都联系不上你，我可担心死你了！从你进去等你出来真的等到花都要谢啦，差不多等了......§a%%s§7分钟！","with":{"rawtext":[{"score":{"objective":"time","name":"playedMinute"}}]}}]}
    execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7我就知道老朋友你能做到！"}]}
    execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7呦，睡得怎么样啊。"}]}
    ## [380] NPC 动作：按照玩家不同死亡数，令田英做出不同动作
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 0 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7很好啦，毕竟你的实力永远是那么值得信赖。"}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 1 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7挺不错的，虽然还是被你的惨叫声吵醒过一回，但总的来说你表现的还是特别棒。"}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 2..9 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7我可没有一直在睡觉，也在努力帮助你呢，大概有......§a%%s§7次吧。","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 10.. run tellraw @s {"rawtext":[{"translate":"* §b田英： §7怎么会啊，我比你还累，足足干了§a%%s§7次活。不得不说，你的惨叫声都快把我的耳朵清理干净了！-_-||","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}
    execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，按照铭文，这把剑应该可以告诉我们空间贤者的力量在哪里了。"}]}
    execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7用心感受剑的声音吧，拜托你了。"}]}
    execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7嗯。"}]}
    ## [700~720] NPC 动作：玩家贴近旷野之剑
    execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"translate":"* 我轻闭双眼，握紧了剑柄，将银白色的剑轻轻贴在额头处。"}]}
    ## [720] 相机视角：黑屏以转场到大海场景
    ## [750] 海洋特效：为玩家提供迷雾效果，改为雷暴和夜晚
    ## [750~900] 相机视角：令林乐看见大海，视角低速移动 | 海洋特效：时而劈下几道闪电
    ## [900] 相机视角：黑屏以转场回试炼入口场景
    ## [930] 海洋特效：解除全部特效
    ## [980~1000] NPC 动作：玩家轻微回位
    execute if score timeline time matches 980 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好像......在北方的海洋深处......有一股强劲的黑暗风暴......还有一个声音在呼唤。"}]}
    execute if score timeline time matches 1060 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7看来空间贤者就在那里！"}]}
    execute if score timeline time matches 1140 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7我们回去准备准备就出发！这一次一定要做个了断！"}]}
    execute if score timeline time matches 1220 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7对！过去的我们没能实现的事情，这次一定得彻底了结！"}]}
    ## [1300] 相机视角：还原视角并黑屏
    ## [1350] 场景转换：转换到村庄中
    ## [1400] 相机视角：切换视角
    ## [1460] NPC 动作：米云溪向前指
    execute if score timeline time matches 1460 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，墙壁上全部文字的翻译，我已经写成书放到你家楼下了哦。"}]}
    execute if score timeline time matches 1540 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7欸，米云溪之前和你聊天的时候，是不是没有告诉你§d剑之试炼的设计者§7啊~？=P"}]}
    ## [1620] NPC 动作：玩家思考
    execute if score timeline time matches 1620 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7你这么一说......是啊，我只知道这个神殿是为了§d纪念四贤者封印恶魔而建造的§7。"}]}
    execute if score timeline time matches 1700 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7等下，四贤者......不就是......？！"}]}
    execute if score timeline time matches 1780 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7那你再猜猜，§d旷野之剑可是剑术天才的武器§7哦，你觉得以前会是谁的呢？"}]}
    execute if score timeline time matches 1860 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7欸？嘶......该不会是......"}]}
    ## [1940] NPC 动作：田英坏笑
    execute if score timeline time matches 1940 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7再告诉你个\"嚎\"消息，§d剑之试炼也是他设计§7的哦。=D"}]}
    execute if score timeline time matches 2020 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊？？？？？"}]}
    ## [2100] NPC 动作：田英坏笑
    execute if score timeline time matches 2100 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7哈哈哈哈哈哈哈！过去挖下的坑，§d§l如今还是得自己填呀§r§7！你当年还说什么愿有能之人【携吾等决意，永除恶灵之患】，哈哈哈~"}]}
    ## [2180] NPC 动作：玩家挠头
    execute if score timeline time matches 2180 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7唉！早知道把坑挖浅点了，这会可是自作自受了qwq。"}]}
# --- NPC 动作 ---
    ## [60] 玩家挥手
        execute if score timeline time matches 60 run playanimation @a animation.aw_npc.stand.wave_hand
    ## [140,460,1060] 米云溪说话(aw:skin==4)
        execute if score timeline time matches 140 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 460 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1060 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
    ## [220,540,1220,1540,1780] 田英说话(aw:skin==7)
        execute if score timeline time matches 220 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 540 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1220 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1540 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1780 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
    ## [380] 按照玩家不同死亡数，令田英做出不同动作 | 【单人】0 次：鼓掌，1次：点头，2~9次：摇头，10次：坏笑 | 【多人】正常说话
        execute if score timeline time matches 380 if score playerAmount data matches 1 if score @a[c=1] deathCount matches 0 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_applause
        execute if score timeline time matches 380 if score playerAmount data matches 1 if score @a[c=1] deathCount matches 1 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_nod
        execute if score timeline time matches 380 if score playerAmount data matches 1 if score @a[c=1] deathCount matches 2..9 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_shake_head
        execute if score timeline time matches 380 if score playerAmount data matches 1 if score @a[c=1] deathCount matches 10.. run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_bad_smile
        execute if score timeline time matches 380 if score playerAmount data matches 2 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
    ## [700~720] 玩家贴近旷野之剑
        execute if score timeline time matches 700..720 as @a at @s run tp @s ~~~-0.1
        execute if score timeline time matches 700 run playanimation @a animation.aw_npc.stand.walk
    ## [980~1000] 玩家轻微回位
        execute if score timeline time matches 980..1000 as @a at @s run tp @s ~~~0.05
        execute if score timeline time matches 980 run playanimation @a animation.aw_npc.stand.walk
    ## [1460] 米云溪向前指
        execute if score timeline time matches 1460 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_point
    ## [1620] 玩家思考
        execute if score timeline time matches 1620 run playanimation @a animation.aw_npc.think
    ## [1940,2100] 田英坏笑
        execute if score timeline time matches 1940 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_bad_smile
        execute if score timeline time matches 2100 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_bad_smile
    ## [2180] 玩家挠头
        execute if score timeline time matches 2180 run playanimation @a animation.aw_npc.confuse
# --- 相机视角 ---
    ## [1] 切换视角
        execute if score timeline time matches 1 run camera @a set minecraft:free ease 2.0 in_out_sine pos -20 6 91 facing -15.0 1 85
    ## [720] 黑屏以转场到大海场景
        execute if score timeline time matches 720 run camera @a fade time 1 2 1
    ## [750~900] 令林乐看见大海，视角低速移动
        execute if score timeline time matches 750 run camera @a set minecraft:free pos -5 2 175 rot 0 45
        execute if score timeline time matches 801 run camera @a set minecraft:free ease 10.0 in_sine pos -50 2 220 rot 0 45
    ## [900] 黑屏以转场回试炼入口场景
        execute if score timeline time matches 900 run camera @a fade time 1 2 1
        execute if score timeline time matches 930 run camera @a clear
        execute if score timeline time matches 931 run camera @a set minecraft:free pos -20 6 91 facing -15.0 1 85
    ## [1300] 还原视角并黑屏
        execute if score timeline time matches 1300 run camera @a clear
        execute if score timeline time matches 1300 run camera @a fade time 1 3 1
    ## [1400] 切换视角
        execute if score timeline time matches 1400 run camera @a set minecraft:free ease 2 in_out_sine pos -30 6 -35 facing -25 0 -36
# --- 海洋特效 ---
    ## [750] 为玩家提供迷雾效果，改为雷暴和夜晚
        execute if score timeline time matches 750 run fog @a push aw:raining gameFog
        execute if score timeline time matches 750 run weather thunder
        execute if score timeline time matches 750 run time set 18000
    ## [800~900] 时而劈下几道闪电
        execute if score timeline time matches 820 run summon lightning_bolt -30 -28 210
        execute if score timeline time matches 880 run summon lightning_bolt -65 -28 220
    ## [930] 解除全部特效
        execute if score timeline time matches 930 run fog @a pop gameFog
        execute if score timeline time matches 930 run weather clear
        execute if score timeline time matches 930 run time set 6000

# --- 场景转换 ---
    ## [1350] 转换到村庄中
        execute if score timeline time matches 1350 run function aw/levels/end/stage1/events/scene1
# --- 剧情结束 ---
    execute if score timeline time matches 2260.. run function aw/levels/end/stage1/complete
