# ===== 躺赢 =====
# 有玩家的击杀数小于 50

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[躺赢]§f ！"}]}
# 调整记录
    scoreboard players set achievement.multiPlayer.killLessThan50 record 1
