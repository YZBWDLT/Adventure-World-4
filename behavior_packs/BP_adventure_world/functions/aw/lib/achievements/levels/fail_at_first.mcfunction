# ===== 出师未捷身先死 =====
# 死于 1-1

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §a[出师未捷身先死]§f ！\n§8§o猜你想问：为什么会有这种成就啊？？？"}]}
# 调整记录
    scoreboard players set achievement.failAtFirst record 1
# 播放音效
    function aw/lib/modify_data/sound/random_levelup
