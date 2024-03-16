# ===== 死亡信息公告方法 =====
# 该方法需要由已经死亡的玩家调用

scoreboard players random @s temp 1 6

execute @s[scores={temp=1}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c在试炼面前还尚未达标","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[scores={temp=2}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c承受不住怪物们的热情","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[scores={temp=3}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c在怪物们的猛烈攻击下消失了","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[scores={temp=4}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c正在无助的观战中","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[scores={temp=5}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c倒在了怪物的脚下...","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[scores={temp=6}] ~~~ tellraw @a {"rawtext":[{"translate":"§e%%s §c在与怪物们搏斗中失败了","with":{"rawtext":[{"selector":"@s"}]}}]}

scoreboard players set @s temp 0