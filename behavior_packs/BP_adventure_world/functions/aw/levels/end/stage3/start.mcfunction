# ===== 开始关卡 =====
# 10-3 | 进入试炼门口

# 设置关卡 ID
    scoreboard players set level data 3

# 调用通用函数
    function aw/lib/events/levels/start_open

# 设置时间线状态为 1
    scoreboard players set timeline active 1

# 传送玩家并设置重生点
    tp @a -15.0 1 82 facing -11 1 81
    spawnpoint @a -16 1 82

# 将张宇“传送”过来
    event entity @e[type=aw:npc,has_property={aw:is_author=false,aw:skin=6}] aw:remove_immediately
    summon aw:npc -11 1 81 facing @p aw:npc_zhangyu "张宇"

# 设置临时变量
    # 地图难度设置
        scoreboard players set temp.difficulty settings 0
    # 额外地图难度设置
        scoreboard players set temp.extraDifficulty settings 0
    # 剧情模式设置
        scoreboard players set temp.storyMode settings 0
# 显示按钮和文本展示实体
    event entity @e[type=aw:text_display] aw:remove_immediately
    ## 更改难度按钮
        setblock -11 2 85 stonebrick ["stone_brick_type"="chiseled"]
        setblock -11 1 85 cobblestone_wall ["wall_block_type"="stone_brick"]
        setblock -12 2 85 polished_blackstone_button ["facing_direction"=4]
    ## 更改模式按钮
        setblock -13 2 87 stonebrick ["stone_brick_type"="chiseled"]
        setblock -13 1 87 cobblestone_wall ["wall_block_type"="stone_brick"]
        setblock -13 2 86 polished_blackstone_button ["facing_direction"=2]
    ## 上一关按钮
        setblock -18 2 87 stonebrick ["stone_brick_type"="chiseled"]
        setblock -18 1 87 cobblestone_wall ["wall_block_type"="stone_brick"]
        setblock -18 2 86 polished_blackstone_button ["facing_direction"=2]
    ## 下一关按钮
        setblock -20 2 85 stonebrick ["stone_brick_type"="chiseled"]
        setblock -20 1 85 cobblestone_wall ["wall_block_type"="stone_brick"]
        setblock -19 2 85 polished_blackstone_button ["facing_direction"=5]
    ## 显示文本展示实体
        function aw/levels/end/stage3/events/show_difficulty
        function aw/levels/end/stage3/events/show_mode
        function aw/levels/end/stage3/events/show_level
    ## 各按钮介绍
        summon aw:text_display "§b与张宇交互回到村庄" -15.0 2.3 90
        summon aw:text_display "§b进入神殿以按照你的设置开始新的试炼" -15.0 2.0 90
        summon aw:text_display "§c进入后不能再中途更改" -15.0 1.7 90
# 播放音乐
    function aw/lib/events/play_music
# 为所有玩家施加隐身（防止其他所有玩家看着显示的那名玩家的大脸 qwq）
    effect @a invisibility 3600 0 true
