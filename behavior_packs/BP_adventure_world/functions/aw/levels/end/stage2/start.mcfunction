# ===== 开始关卡 =====
# 10-2 | 进行最终结算

# 设置关卡 ID
    scoreboard players set level data 2

# 设置为游戏状态
    scoreboard players set levelCompleted data 0

# 生成作者 NPC
    function aw/levels/end/stage2/events/spawn_authors

# 林乐家相关
    ## 楼下：成就按钮
        setblock -25 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=false]
        setblock -29 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=false]
    ## 楼下：统计按钮
        setblock -26 2 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=false]
    ## 楼上：制作人员名单按钮
        setblock -25 7 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=false]
    ## 楼下：米云溪的翻译手稿
        structure load aw:lecture_with_book -27 1 -45

# 开放商店（因为此时有可能底下因为开发者模式的问题还埋着边界方块）
    fill -21 0 37 -23 0 37 air

# 生成悬浮文本
    function aw/levels/end/stage2/events/show_author_group
    function aw/levels/end/stage2/events/on_exit/home

# 临时变量设置
    ## 是否有玩家在林乐家
        scoreboard players set temp.hasPlayerInHome data 0
    ## 是否有玩家在林乐家楼上
        scoreboard players set temp.hasPlayerInHomeUp data 0
    ## 是否有玩家在林乐家楼下
        scoreboard players set temp.hasPlayerInHomeDown data 0
    ## 是否有玩家在张宇商店
        scoreboard players set temp.hasPlayerInShop data 0
    ## 当前显示的制作人页数
        scoreboard players set temp.creditPage data 0
    ## 当前显示的成就页数
        scoreboard players set temp.achievementPage data 1
    ## 当前显示的统计页数
        scoreboard players set temp.statPage data 1
