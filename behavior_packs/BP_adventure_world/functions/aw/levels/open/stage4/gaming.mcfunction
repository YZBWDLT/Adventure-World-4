# ===== 关卡游戏时时间线 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# --- 剧情 ---
# NPC 说话时会自带动作（NPC 动作：xxx 说话），除特殊标注外均为此标记。
    ## [1] 相机变换：面向张宇林乐两人
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7你来了林乐，我想跟你聊一件事。"}]}
    execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7您请说，是什么事？"}]}
    ## 停顿
    ## [260] 相机变换：面向碎片
    execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7是这样，我年轻的时候，在湖边的山脚下发现了§d一块神奇的金属碎片§7。"}]}
    ## [305~320] NPC 动作：张宇拿出并放下碎片
    execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7就在我端详着它的时候，只见那大山轰的一声，突然就开了。"}]}
    execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7在山的后面我看到了一片小湖，湖的中间居然有一座上了年代的建筑......好像是通往§d地下的某个神庙的入口§7。"}]}
    execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7§d碎片似乎是进入的钥匙§7，但只可惜，后来我发现我并没有能进去的资格。"}]}
    execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7也不知怎么的，离开那个地方后，我就对武器产生了很大的兴趣，成为了一名铁匠，专门为各路勇士打造利剑。"}]}
    ## 停顿
    execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7只可惜后来......因为种种变故，我放弃了做铁匠，隐姓埋名来到这里，做了商人。"}]}
    execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7这么多年过去了，看到你这个剑术天才，我想也许那个神庙是专门为你而生的。"}]}
    ## [840] 相机变换：面向两人
    execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §e张宇： §7碎片我一直留着，现在我把它给你，也告诉你前往那里的路，愿你归来能够有所收获。"}]}
    execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好，谢谢您！我叫上朋友一起去那里看看。"}]}
    ## [1000~1060] 相机变换：逐渐黑屏，并在黑屏后改回玩家视角
    execute if score timeline time matches 1060 run tellraw @a {"rawtext":[{"text":"* 就这样，我们按照老板给出的描述来到了湖边的山脚下。"}]}
    ## [1060~1300] 相机变换：持续黑屏状态
    execute if score timeline time matches 1140 run tellraw @a {"rawtext":[{"text":"* 深吸一口气之后，我将老板交给我的碎片放在地上。"}]}
    execute if score timeline time matches 1220 run tellraw @a {"rawtext":[{"text":"* 突然，地动山摇，面前的山峦轰然打开，正如老板所言，背后正是一片被众山环绕的小湖。"}]}
    execute if score timeline time matches 1300 run tellraw @a {"rawtext":[{"text":"* 湖心小岛上，一座古老的庙宇矗立于其中，不知为何有一种熟悉的感觉......"}]}
    ## [1300] 场景变换：切换场景到剑之试炼入口
    ## [1301] 相机变换：切换远景
    execute if score timeline time matches 1360 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哇，好神奇的建筑啊！"}]}
    execute if score timeline time matches 1440 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7入口有点像我之前去过的各种神殿诶。"}]}
    execute if score timeline time matches 1520 run tellraw @a {"rawtext":[{"text":"* §b田英： §7感觉特别像是那个盾之试炼的入口。"}]}
    execute if score timeline time matches 1630 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7你这么一说还真是。或许......值得探索一番？"}]}
    ## [1680] 相机变换：将玩家的视角从神殿转向田英
    ## [1680] NPC 动作：允许 NPC 面向玩家
    execute if score timeline time matches 1680 run tellraw @a {"rawtext":[{"text":"* §b田英： §7说不定还能提供一些有助于寻找空间贤者的线索！"}]}
    ## [1760] NPC 动作：玩家思考
    execute if score timeline time matches 1760 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7线索......对了，云儿你看看，神殿的墙壁上有没有刻字？"}]}
    ## [1860] 相机变换：逐渐黑屏
    ## [1880] 场景变换：切换场景到剑之试炼背侧
    ## [1880] 相机变换：面向墙壁刻文
    execute if score timeline time matches 1960 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7太好了！真的有文字，而且保存得很完整！"}]}
    execute if score timeline time matches 2040 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好！这样你就可以进行解读工作了！"}]}
    execute if score timeline time matches 2120 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7第一行字应该是标题，写的是......§d【剑之试炼】§7"}]}
    ## [2200] NPC 动作：米云溪向前指
    execute if score timeline time matches 2200 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7§d【只有通过严格考验的剑术天才，才有资格继承旷野之剑】§7......"}]}
    ## [2280] 相机变换：面向三人
    execute if score timeline time matches 2280 run tellraw @a {"rawtext":[{"text":"* §b田英： §7听见没？林乐，又是你的工作。"}]}
    ## [2360] NPC 动作：允许 NPC 面向玩家，且玩家点头
    execute if score timeline time matches 2360 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好，我这就进去！"}]}
    execute if score timeline time matches 2440 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7等一等！里面可能非常危险，等我把内容全部解读完再说吧。"}]}
    execute if score timeline time matches 2520 run tellraw @a {"rawtext":[{"text":"* §b田英： §7没关系，让他去吧。都是老朋友了，你我都知道，凭他的实力不会有问题的。"}]}
    execute if score timeline time matches 2600 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7是啊，不必担心我。"}]}
    execute if score timeline time matches 2680 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......好吧。不过答应我们，一定要保护好自己！"}]}
    ## [2760] 相机变换：将玩家的视角从神殿转向田英
    execute if score timeline time matches 2760 run tellraw @a {"rawtext":[{"text":"* §b田英： §7对了，把这个带上吧。"}]}
    ## [2840] 给予物品：给予玩家传声石结晶
    execute if score timeline time matches 2840 run tellraw @a {"rawtext":[{"text":"§f你已获得 §a[传声石结晶] §f！"}]}
    execute if score timeline time matches 2920 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这是......？"}]}
    execute if score timeline time matches 3000 run tellraw @a {"rawtext":[{"text":"* §b田英： §7这是拿云儿家的特产——传声石做的结晶，有了它，就可以让我们§d随时保持联系§7。"}]}
    ## [3080] 给予物品：给予米云溪传声石结晶
    execute if score timeline time matches 3080 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7另外一个在我这里，你在底下要多多和我报平安啊！"}]}
    execute if score timeline time matches 3160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没问题，别忘了和我说说你的解读进展哈。"}]}
    ## [3200] 相机变换：恢复玩家视角
# --- NPC 动作 ---
    ## [305~320] 张宇拿出并放下碎片
        execute if score timeline time matches 305 run replaceitem entity @e[name="张宇"] slot.weapon.mainhand 0 netherite_scrap
        execute if score timeline time matches 310 run playanimation @e[name="张宇"] animation.aw_npc.zhangyu_place_item
        execute if score timeline time matches 320 run replaceitem entity @e[name="张宇"] slot.weapon.mainhand 0 air
        execute if score timeline time matches 320 run structure load aw:item_netherite_scrap -21 4 41
    ## [60,260,340,420,500,580,700,780,860] 张宇说话
        execute if score timeline time matches 60 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 260 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 340 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 420 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 500 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 580 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 700 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 780 run event entity @e[name="张宇"] aw:animation_speak
        execute if score timeline time matches 860 run event entity @e[name="张宇"] aw:animation_speak
    ## [1360,1960,2120,2200,2440,2680,3080] 米云溪说话
        execute if score timeline time matches 1360 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 1960 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 2120 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 2200 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 2440 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 2680 run event entity @e[name="米云溪"] aw:animation_speak
        execute if score timeline time matches 3080 run event entity @e[name="米云溪"] aw:animation_speak
    ## [1520,1680,2280,2520,2760,3000] 田英说话
        execute if score timeline time matches 1520 run event entity @e[name="田英"] aw:animation_speak
        execute if score timeline time matches 1680 run event entity @e[name="田英"] aw:animation_speak
        execute if score timeline time matches 2280 run event entity @e[name="田英"] aw:animation_speak
        execute if score timeline time matches 2520 run event entity @e[name="田英"] aw:animation_speak
        execute if score timeline time matches 2760 run event entity @e[name="田英"] aw:animation_speak
        execute if score timeline time matches 3000 run event entity @e[name="田英"] aw:animation_speak
    ## [1680] 允许 NPC 面向玩家
        execute if score timeline time matches 1680 run event entity @e[type=aw:npc] aw:see_player
    ## [1760] 玩家思考
        execute if score timeline time matches 1760 run playanimation @a animation.aw_npc.think
    ## [2200] 米云溪向前指
        execute if score timeline time matches 2200 run event entity @e[name="米云溪"] aw:animation_point
    ## [2360] 允许 NPC 面向玩家，且玩家点头
        execute if score timeline time matches 2360 run event entity @e[type=aw:npc] aw:see_player
        execute if score timeline time matches 2360 run playanimation @a animation.aw_npc.nod
# --- 相机变换 ---
    ## [1] 面向两人
        execute if score timeline time matches 1 run camera @a set minecraft:free ease 2 out_sine pos -18 6 38 facing -21 4 41
    ## [260] 面向碎片
        execute if score timeline time matches 260 as @a at @s run camera @s set minecraft:free ease 30 linear pos -20.0 5.0 41.0 facing -21 4.5 41
    ## [840] 面向两人
        execute if score timeline time matches 840 run camera @a clear
        execute if score timeline time matches 840 run camera @a set minecraft:free pos -18 6 38 facing -21 4 41
    ## [1000~1060] 逐渐黑屏，并在黑屏后改回玩家视角
        execute if score timeline time matches 1000 run camera @a fade time 3 10 3 color 0 0 0
        execute if score timeline time matches 1060 run camera @a clear
    ## [1060~1300] 持续黑屏状态
        execute if score timeline time matches 1100 run camera @a fade time 0 10 3 color 0 0 0
    ## [1301] 切换远景
        execute if score timeline time matches 1301 run camera @a set minecraft:free ease 2 out_sine pos -5 10 80 facing -17 1 95
    ## [1680] 将玩家的视角从神殿转向米云溪
        execute if score timeline time matches 1680 as @a at @s run tp @s ~~~ facing @e[name="米云溪",c=1]
    ## [1860] 逐渐黑屏
        execute if score timeline time matches 1860 run camera @a fade time 1 1 1 color 0 0 0
    ## [1880] 面向墙壁刻文
        execute if score timeline time matches 1880 run camera @a set minecraft:free pos -18 4 106 facing -16 3 103
    ## [2280] 面向三人
        execute if score timeline time matches 2280 run camera @a set minecraft:free ease 2 out_sine pos -17 5 114 facing -14 1 108
    ## [2760] 将玩家的视角从神殿转向田英
        execute if score timeline time matches 2760 as @a at @s run tp @s ~~~ facing @e[name="田英",c=1]
    ## [3200] 恢复玩家视角
        execute if score timeline time matches 3200 as @a at @s anchored eyes run camera @s set minecraft:free ease 2 in_out_sine pos ^^^0.3 facing ^^^1
        execute if score timeline time matches 3240 run camera @a clear
# --- 场景变换 ---
    ## [1300] 切换场景到剑之试炼入口
        execute if score timeline time matches 1300 run function aw/levels/open/stage4/events/scene1
    ## [1880] 切换场景到剑之试炼背侧
        execute if score timeline time matches 1880 run function aw/levels/open/stage4/events/scene2
# --- 给予物品 ---
    ## [2840] 给予玩家传声石结晶
        execute if score timeline time matches 2840 run function aw/levels/open/stage4/events/enable_crystal
    ## [3080] 给予玩家传声石结晶
        execute if score timeline time matches 3080 run replaceitem entity @e[name="米云溪"] slot.weapon.mainhand 0 aw:acoustic_stone_crystal
# --- 剧情结束 ---
    execute if score timeline time matches 3240 run function aw/levels/open/stage4/complete
