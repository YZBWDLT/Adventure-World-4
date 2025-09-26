# ===== 还是跑酷大佬 =====
# 跑上时间神殿的最顶端

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得隐藏成就 §e[还是跑酷大佬]§f ！"}]}
# 调整记录
    scoreboard players set achievement.parkour record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
