# ===== 让开，这里归我了！ =====
# 趴在棺材里......？

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得隐藏成就 §e[让开，这里归我了！]§f ！"}]}
# 调整记录
    scoreboard players set achievement.layInCoffin record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
