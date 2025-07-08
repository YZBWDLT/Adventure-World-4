# ===== 关卡游戏时时间线 =====
# 10-1 | 林乐回归

# --- 剧情 ---

    ## [1] 相机视角：切换视角
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊！我成功了！这就是旷野之剑！"}]}
    execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐——！刚刚我怎么都联系不上你，我可担心死你了！真的等你等到花都要谢啦，差不多等了......§a%%s§7分钟！","with":{"rawtext":[{"score":{"objective":"time","name":"playedMinute"}}]}}]}
    execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7我就知道老朋友你能做到！"}]}
    execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7呦，睡得怎么样啊。"}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 0 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7很好啦，毕竟你的实力永远是那么值得信赖。"}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 1 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7挺不错的，虽然还是被你的惨叫声吵醒过一回，但总的来说你表现的还是特别棒。"}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 2..9 run tellraw @s {"rawtext":[{"translate":"* §b田英： §7我可没有一直在睡觉，也在努力帮助你呢，大概有......§a%%s§7次吧。","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}
    execute if score timeline time matches 380 as @a at @s if score @s deathCount matches 10.. run tellraw @s {"rawtext":[{"translate":"* §b田英： §7怎么会啊，我比你还累，足足干了§a%%s§7次活。不得不说，你的惨叫声都快把我的耳朵清理干净了！-_-||","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}
    execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，按照铭文，这把剑应该可以告诉我们空间贤者的力量在哪里了。"}]}
    execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7用心感受剑的声音吧，拜托你了。"}]}
    execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7嗯。"}]}
    ## [700~720] 人物动作：贴近旷野之剑
    execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"translate":"* 我轻闭双眼，握紧了剑柄，将银白色的剑轻轻贴在额头处。"}]}
    ## [720] 人物动作：给予失明
    ## [780~800] 人物动作：轻微回位
    execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好像......在北方的海洋深处......有一股强劲的黑暗风暴......还有一个声音在呼唤。"}]}
    execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7看来空间贤者就在那里！"}]}
    execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7我们回去准备准备就出发！这一次一定要做个了断！"}]}
    execute if score timeline time matches 1020 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7对！过去的我们没能实现的事情，这次一定得彻底了结！"}]}
    ## [1100] 相机视角：还原视角并黑屏
    ## [1150] 场景转换：转换到村庄中
    execute if score timeline time matches 1260 run tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，墙壁上全部文字的翻译，我已经写成书放到你家楼下了哦。"}]}
    execute if score timeline time matches 1340 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7欸，米云溪之前和你聊天的时候，是不是没有告诉你剑之试炼的设计者啊~？=P"}]}
    execute if score timeline time matches 1420 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7你这么一说......是啊，我只知道这个神殿是为了纪念四贤者封印恶魔而建造的。"}]}
    execute if score timeline time matches 1500 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7等下，四贤者......不就是......？！"}]}
    execute if score timeline time matches 1580 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7那你再猜猜，旷野之剑可是剑术天才的武器哦，你觉得以前会是谁的呢？"}]}
    execute if score timeline time matches 1660 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7欸？嘶......该不会是......"}]}
    execute if score timeline time matches 1740 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7再告诉你个\"嚎\"消息，剑之试炼也是他设计的哦。=D"}]}
    execute if score timeline time matches 1820 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊？？？？？"}]}
    execute if score timeline time matches 1900 run tellraw @a {"rawtext":[{"translate":"* §b田英： §7哈哈哈哈哈哈哈！过去挖下的坑，如今还是得自己填呀！你当年还说什么愿有能之人【携吾等决意，永除恶灵之患】，哈哈哈~"}]}
    execute if score timeline time matches 1980 run tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7唉！早知道把坑挖浅点了，这会可是自作自受了qwq。"}]}

# --- 相机视角 ---
    ## [1] 切换视角
        execute if score timeline time matches 1 run camera @a set minecraft:free ease 2.0 in_out_sine pos -20 6 91 facing -15.0 1 85
    ## [1100] 还原视角并黑屏
        execute if score timeline time matches 1100 run camera @a clear
        execute if score timeline time matches 1100 run camera @a fade time 1 3 1
    ## [1200] 切换视角
        execute if score timeline time matches 1200 run camera @a set minecraft:free ease 2 in_out_sine pos -30 6 -35 facing -25 0 -36

# --- 人物动作 ---
    ## [700~720] 贴近旷野之剑
        execute if score timeline time matches 700..720 as @a at @s run tp @s ~~~-0.1
    ## [720] 给予失明
        execute if score timeline time matches 720 run effect @a blindness 4 0 true
    ## [780~800] 轻微回位
        execute if score timeline time matches 780..800 as @a at @s run tp @s ~~~0.05

# --- 场景转换 ---
    ## [1150] 转换到村庄中
        execute if score timeline time matches 1150 run function aw/levels/end/stage1/events/scene1

# --- 剧情结束 ---
    execute if score timeline time matches 2060.. run function aw/levels/end/stage1/complete

