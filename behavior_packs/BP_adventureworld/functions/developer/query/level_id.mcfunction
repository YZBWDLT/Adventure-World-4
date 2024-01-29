# ===== 记分板查询函数 =====
# 调用此函数以查询所有记分板的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"关卡ID表"}]}

## === 激活数据 active ===

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"1 开始游戏前 | 2 开始游戏开幕 | 3 开始游戏后进入村庄"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"101 1-0 | 110~111 1-1 | 120~121 1-2 | 130~131 1-3"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"201 2-0 | 210~211 2-1 | 220~221 2-2 | 230~231 2-3"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"301 3-0 | 310~311 3-1 | 320~321 3-2 | 330~331 3-3 | 340~341 3-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"401 4-0 | 410~411 4-1 | 420~421 4-2 | 430~431 4-3 | 440~441 4-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"501 5-0"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"601 6-0 | 610~611 6-1 | 620~621 6-2 | 630~631 6-3 | 640~641 6-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"601 6-0 | 610~611 6-1 | 620~621 6-2 | 630~631 6-3 | 640~641 6-4"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"701 剑之神殿动画进行时 | 710~711 7-1 | 720~721 7-2 | 730~731 7-3 | 740~741 7-4 | 750~751 7-5"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"801 "}]}

scoreboard players set @s temp 0