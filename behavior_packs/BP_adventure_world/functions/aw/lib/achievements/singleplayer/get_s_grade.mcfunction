# ===== 出神入化 =====
# 获得 S 级评价

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[出神入化]§f ！"}]}
# 调整记录
    scoreboard players set achievement.singlePlayer.getSGrade record 1
# 添加成就完成记录
    scoreboard players add achievement record 1
