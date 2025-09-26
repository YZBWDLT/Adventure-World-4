# ===== 全身而退 =====
# 不受伤通过 2-3

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[全身而退]§f ！"}]}
# 调整记录
    scoreboard players set achievement.noHurt1 record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
