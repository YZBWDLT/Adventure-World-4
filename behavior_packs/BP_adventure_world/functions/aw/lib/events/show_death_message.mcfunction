# ===== 宣布玩家死亡 =====
# 用于在死亡时随机宣布一个死亡消息，通告该玩家已死亡。
# 调用此方法时：需修饰执行者为死亡玩家（execute as @a[scores={death=2}]）

# --- 提醒该玩家 ---
# 不在 6-4 或 7-5 执行，因为这些关卡有自己的死亡消息
tag @s add showMessage
execute if score chapter data matches 6 if score level data matches 4 run tag @s remove showMessage
execute if score chapter data matches 7 if score level data matches 5 if score wave data matches 2 run tag @s remove showMessage
tellraw @s[tag=showMessage] {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！但不要着急，您在下一波就会被解救出来。"}]}
tag @s remove showMessage

# --- 对其他玩家公告 ---
scoreboard players random temp.deathMessage data 1 6

execute if score temp.deathMessage data matches 1 run tellraw @a {"rawtext":[{"translate":"§e%%s §c在试炼面前还尚未达标","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.deathMessage data matches 2 run tellraw @a {"rawtext":[{"translate":"§e%%s §c承受不住怪物们的热情","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.deathMessage data matches 3 run tellraw @a {"rawtext":[{"translate":"§e%%s §c在怪物们的猛烈攻击下消失了","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.deathMessage data matches 4 run tellraw @a {"rawtext":[{"translate":"§e%%s §c正在无助的观战中","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.deathMessage data matches 5 run tellraw @a {"rawtext":[{"translate":"§e%%s §c倒在了怪物的脚下...","with":{"rawtext":[{"selector":"@s"}]}}]}
execute if score temp.deathMessage data matches 6 run tellraw @a {"rawtext":[{"translate":"§e%%s §c在与怪物们搏斗中失败了","with":{"rawtext":[{"selector":"@s"}]}}]}

scoreboard players reset temp.deathMessage data
