# ===== 势如破竹 =====
# 在45分钟内通过试炼

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[势如破竹]§f ！"}]}
# 调整记录
    scoreboard players set achievement.multiPlayer.speedrun record 1
# 添加成就完成记录
    scoreboard players add achievement record 1
