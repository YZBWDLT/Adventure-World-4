# ===== 身轻如燕 =====
# 不穿皮革靴子通过 4-3

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[身轻如燕]§f ！"}]}
# 调整记录
    scoreboard players set achievement.noLeatherBoots record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
