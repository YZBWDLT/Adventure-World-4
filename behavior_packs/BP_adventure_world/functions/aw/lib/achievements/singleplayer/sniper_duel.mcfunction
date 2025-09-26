# ===== 狙击手的对决 =====
# 射杀 60 只以上的骷髅或流浪者通过试炼

# 提示玩家获得成就
    tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[狙击手的对决]§f ！\n§r§8你本次射杀了 %%s 只骷髅，因此获得了这个成就！","with":{"rawtext":[{"score":{"objective":"data","name":"skeletonShotAmount"}}]}}]}
# 调整记录
    scoreboard players set achievement.singlePlayer.sniperDuel record 1
