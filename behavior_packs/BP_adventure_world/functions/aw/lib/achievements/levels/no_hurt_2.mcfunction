# ===== 全身而退 II =====
# 不受伤通过 3-4 第 3 波

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[全身而退 II]§f ！"}]}
# 调整记录
    scoreboard players set achievement.noHurt2 record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
