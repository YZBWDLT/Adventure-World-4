# ===== 骷髅王的宝藏 =====
# ......那真是宝藏吗？

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得隐藏成就 §e[骷髅王的宝藏]§f ！"}]}
# 调整记录
    scoreboard players set achievement.getTreasure record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
