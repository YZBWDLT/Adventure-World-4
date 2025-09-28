# ===== 人多力量大 =====
# 不团灭通过剑之试炼

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[人多力量大]§f ！"}]}
# 调整记录
    scoreboard players set achievement.multiPlayer.neverDied record 1
# 添加成就完成记录
    scoreboard players add achievement record 1
