# ===== 我以为挂机池呢 =====
# 不击杀任何怪物通过 4-4

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[我以为挂机池呢]§f ！"}]}
# 调整记录
    scoreboard players set achievement.noMonsterKilled record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
