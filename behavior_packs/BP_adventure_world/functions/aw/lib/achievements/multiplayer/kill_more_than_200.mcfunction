# ===== 全靠我带飞 =====
# 有玩家的击杀数大于 200

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[全靠我带飞]§f ！"}]}
# 调整记录
    scoreboard players set achievement.multiPlayer.killMoreThan200 record 1
