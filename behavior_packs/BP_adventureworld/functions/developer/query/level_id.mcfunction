# ===== 关卡ID查询函数 =====
# 调用此函数以查询所有关卡ID的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"§l===== 关卡ID表 ====="}]}

## === 激活数据 active ===

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a1 §7开始游戏的模式选择"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a2 §7开始游戏开幕（剧情模式）"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a3~9 §7村庄剧情"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a99 §7开始游戏开幕（战斗模式）"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a101 §71-0 | §a110~111 §71-1 | §a120~121 §71-2 | §a130~131 §71-3"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a201 §72-0 | §a210~211 §72-1 | §a220~221 §72-2 | §a230~231 §72-3"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a301 §73-0 | §a310~311 §73-1 | §a320~321 §73-2 | §a330~331 §73-3 | §a340~341 §73-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a401 §74-0 | §a410~411 §74-1 | §a420~421 §74-2 | §a430~431 §74-3 | §a440~441 §74-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a501 §75-0"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a601 §76-0 | §a610~611 §76-1 | §a620~621 §76-2 | §a630~631 §76-3 | §a640~641 §76-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a601 §76-0 | §a610~611 §76-1 | §a620~621 §76-2 | §a630~631 §76-3 | §a640~641 §76-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a701 §7剑之神殿动画进行时"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a709~711 §77-1 | §a720~721 §77-2 | §a730~731 §77-3 | §a740~741 §77-4 | §a750~751 §77-5"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§a801 §7"}]}

scoreboard players set @s temp 0