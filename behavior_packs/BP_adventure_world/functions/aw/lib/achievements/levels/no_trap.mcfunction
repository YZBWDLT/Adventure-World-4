# ===== 别问，问就是陷阱 =====
# 不使用机关通过 2-2

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[别问，问就是陷阱]§f ！"}]}
# 调整记录
    scoreboard players set achievement.noTrap record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
# 添加成就完成记录
    scoreboard players add achievement record 1
