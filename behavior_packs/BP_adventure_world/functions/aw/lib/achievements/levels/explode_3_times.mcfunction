# ===== 耐砸王 =====
# 在 7-5 被火球砸 3 回，三回啊三回！

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[耐砸王]§f ！"}]}
# 调整记录
    scoreboard players set achievement.explode3Times record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
