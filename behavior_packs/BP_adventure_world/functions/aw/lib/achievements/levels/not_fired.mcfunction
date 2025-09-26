# ===== 闪避点满 =====
# 不踩到火、不掉进岩浆通过 7-5

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[闪避点满]§f ！"}]}
# 调整记录
    scoreboard players set achievement.notFired record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
