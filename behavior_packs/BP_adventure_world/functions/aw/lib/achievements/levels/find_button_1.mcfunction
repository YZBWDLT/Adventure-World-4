# ===== 躲这里不错 =====
# 发现 3-2 的一个隐藏按钮

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得隐藏成就 §e[躲这里不错]§f ！"}]}
# 调整记录
    scoreboard players set achievement.findButton1 record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
