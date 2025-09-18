# ===== 转换到新场景 =====
# 在黑屏后，转换所有玩家到村庄内

# 传送玩家
    tp @a -26 1 -37 facing -25 1 -34

# NPC 重设定
    function aw/levels/end/stage1/events/spawn_npc

# 清除多余实体
    event entity @e[type=aw:wild_sword] aw:remove_immediately
