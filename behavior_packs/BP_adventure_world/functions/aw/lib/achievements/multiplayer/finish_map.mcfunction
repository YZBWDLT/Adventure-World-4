# ===== 齐心协力 =====
# 通过剑之试炼

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[齐心协力]§f ！"}]}
# 调整记录
    scoreboard players set achievement.multiPlayer.finishMap record 1
# 添加成就完成记录
    scoreboard players add achievement record 1
