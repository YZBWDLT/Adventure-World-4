# ===== 太亢奋了 =====
# 在 1 分钟内秒掉烈焰之魂

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[太亢奋了]§f ！"}]}
# 调整记录
    scoreboard players set achievement.killBossRapidly record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
