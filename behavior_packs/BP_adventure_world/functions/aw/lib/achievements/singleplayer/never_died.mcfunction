# ===== 让田英睡觉去吧！ =====
# 不死亡通过剑之试炼

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得成就 §b[让田英睡觉去吧！]§f ！"}]}
# 调整记录
    scoreboard players set achievement.singlePlayer.neverDied record 1
# 添加成就完成记录
    scoreboard players add achievement record 1
