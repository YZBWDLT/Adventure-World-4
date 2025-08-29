# ===== 开始关卡 =====
# 1-0 | 沙漠神殿

# --- 关卡参数 ---
    ## 关卡 ID
        scoreboard players set chapter data 1
        scoreboard players set level data 0

# --- 玩家处理 ---

    ## 播放标题 | 应先于[调用通用函数]模块
        titleraw @a title {"rawtext":[{"translate":"§e§l沙 漠 神 殿"}]}
    ## 设置重生点 | 特别地，因为这是整个试炼的开始，所以先设置重生点以防不测
        spawnpoint @a -117 1 -6
    ## 传送玩家 | 特别地，因为这是整个试炼的开始，所以一视同仁地传送
        tp @a -117 1 -6 0 0

# --- 调用通用函数 ---
    ## 调用前先清除玩家的物品（仅限1-0的初始化，后续的X-0不再清除物品）
        clear @a
        function aw/lib/events/levels/start_chapter

# --- 生成各关的门 ---
    ## 1-1
        summon aw:door -117 1 14 0 0 aw:set_desert_door
        summon aw:door -117 1 32 0 0 aw:set_desert_door
    ## 1-2
        summon aw:door -126 5 50 0 0 aw:set_desert_door
    ## 1-3
        summon aw:door -139 11 33 90 0 aw:set_desert_door
        summon aw:door -121 18 26 90 0 aw:set_desert_door

# --- 生成章节名 ---
    # 备注：应后于[调用通用函数]模块
    summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§e沙漠神殿"

# --- 关卡特殊功能 ---
    ## 若处于剧情模式下且未启用传声石结晶，则启用之
        execute if score storyMode settings matches 1 if score allowAcousticStoneCrystal data matches 0 run scoreboard players set allowAcousticStoneCrystal data 1
