# ===== 开始关卡 =====
# 10-1 | 林乐回归

# 设置关卡 ID
    scoreboard players set chapter data 10
    scoreboard players set level data 1

# 调用通用函数
    function aw/lib/events/levels/start_open

# 生成实体
    ## NPC
        event entity @e[type=aw:npc] aw:remove_immediately
        summon aw:npc -14 1 83 0 0 aw:npc_tianying "田英"
        summon aw:npc -17 1 83 0 0 aw:npc_miyunxi "米云溪"
    ## 旷野之剑
        event entity @e[type=aw:wild_sword] aw:remove_immediately
        summon aw:wild_sword -15.0 1 85 0 0 aw:drawn

# 传送玩家
    tp @a -15.0 1 88 facing @e[type=aw:wild_sword,c=1]

# 清除玩家的物品和药效
    ## 移除传声石结晶的使用权限
        scoreboard players set allowAcousticStoneCrystal data 0
    ## 清除玩家的物品和药效
        clear @a
        effect @a clear

# 重新设置重生点
    spawnpoint @a -15 2 88

# 移除多余实体
    event entity @e[type=aw:text_display] aw:remove_immediately

# 播放音乐
    function aw/lib/events/play_music
