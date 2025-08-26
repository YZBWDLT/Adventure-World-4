# ===== 关卡游戏时时间线 =====
# 0-3 | 到达时间神殿

# --- 剧情 ---
# NPC 说话时会自带动作（NPC 动作：xxx 说话），除特殊标注外均为此标记。
    # [1] 相机变换：面向两人
    execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，你在这里啊！"}]}
    # [140] 相机变换：面向时间神殿
    execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你来了~？这里就是你之前穿越时间的地方吧。"}]}
    execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7是啊，你之前对我的经历很感兴趣，等事情都解决了，我可以带着你再一起穿越看看。"}]}
    execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯嗯，好呀！不过当务之急还是得先弄清空间贤者的下落啊。"}]}
    # [300] 相机变换：面向两人
    execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7唉，真愁人啊，现在一点线索都没有。你有什么发现吗？"}]}
    execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7刚才我正好发现了很奇特的东西，你来看看，或许能有些帮助。"}]}
    execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哦？你细说。"}]}
    # [620] 相机变换：面向时间神殿的刻文
    execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你看这里的墙壁，上面有些花纹，很明显是§d刻印的痕迹§7......"}]}
    execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7我怀疑......§d它们是某种文字§7，记录了某些内容。"}]}
    execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7文字？你很了解古文字的，能认出它们来吗？"}]}
    execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7我很确信这就是我熟悉的古文字，但是......这些字损毁得太严重了，我获取不到什么有价值的信息。"}]}
    # [940] 相机变换：面向两人
    execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也许其他建筑上保存的文字会完整一些，之后去调查一下吧。"}]}
    execute if score timeline time matches 1020 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7那些§d神殿里有好多怪物§7的，要去也要一起去调查呀！"}]}
    # [1040~1140] NPC 动作：田英行走
    # [1080] 相机变换：面向田英
    execute if score timeline time matches 1100 run tellraw @a {"rawtext":[{"text":"* §b田英： §7喂——你们两个！聊得这么欢，是有所发现了吧？"}]}
    execute if score timeline time matches 1180 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7......哎呀，出场好歹打个招呼呀！吓到我们了可恶！"}]}
    execute if score timeline time matches 1260 run tellraw @a {"rawtext":[{"text":"* §b田英： §7抱歉哈......说回来，林乐，刚才§d商店的张宇老板§7托我和你捎个口信，说有话想找你谈谈......§d你过去一趟吧§7，看他神情有点奇怪。"}]}
    execute if score timeline time matches 1340 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这样啊......行！我这就过去，云儿你和他讲讲刚才的发现吧。"}]}
    # [1380] 相机变换：恢复玩家视角
# --- NPC 动作 ---
    ## [140,300,460,620,1020] 米云溪说话（700,860时玩家视角面向墙壁，所以不执行命令）（aw:skin==4）
        execute if score timeline time matches 140 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 300 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 460 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 620 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1020 run event entity @e[type=aw:npc,has_property={aw:skin=4,aw:is_author=false}] aw:animation_speak
    ## [1040~1140] 田英行走（aw:skin==7）
        execute if score timeline time matches 1040..1140 as @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] at @s run tp @s ~~~-0.1
        execute if score timeline time matches 1140 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:see_player
    ## [1100,1260] 田英说话
        execute if score timeline time matches 1100 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
        execute if score timeline time matches 1260 run event entity @e[type=aw:npc,has_property={aw:skin=7,aw:is_author=false}] aw:animation_speak
# --- 相机变换 ---
    # [1] 面向两人
        execute if score timeline time matches 1 run camera @a set minecraft:free ease 2 out_sine pos 34 5 -18 facing 34 1 -23
    # [140] 面向时间神殿
        execute if score timeline time matches 140 run camera @a set minecraft:free ease 2 out_sine pos 50 20 -15 facing 35 5 -33
    # [300] 面向两人
        execute if score timeline time matches 300 run camera @a set minecraft:free ease 2 out_sine pos 34 5 -18 facing 34 1 -23
    # [620] 面向时间神殿的刻文
        execute if score timeline time matches 620 run camera @a set minecraft:free ease 2 in_out_sine pos 35 7 -33 facing 30 2 -33
    # [940] 面向两人
        execute if score timeline time matches 940 run camera @a set minecraft:free ease 2 out_sine pos 34 5 -18 facing 34 1 -23
    # [1080] 面向田英
        execute if score timeline time matches 1080 run camera @a set minecraft:free ease 2 out_sine pos 35 5 -29 facing 34 1 -23
    # [1380] 恢复玩家视角
        execute if score timeline time matches 1380 as @a at @s anchored eyes run camera @s set minecraft:free ease 2 in_out_sine pos ^^^0.3 facing ^^^1
        execute if score timeline time matches 1420 run camera @a clear
# --- 剧情结束 ---
    execute if score timeline time matches 1420 run function aw/levels/open/stage3/complete
