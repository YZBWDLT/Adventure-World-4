# ===== 变量查询 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"text":"格式：<记分项>.<名称>=<值>"}]}

execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§l===== 单人成就 ====="}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.finishMap = §a%%s §7# 神剑的恩赐 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.finishMap"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.neverDied = §a%%s §7# 让田英睡觉去吧！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.neverDied"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty2 = §a%%s §7# 挑战自我 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty2"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty3 = §a%%s §7# 举步维艰 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty3"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty4 = §a%%s §7# 这不可能！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty4"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.speedrun = §a%%s §7# 别挡道，我很急！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.speedrun"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.noPotion = §a%%s §7# 纯天然 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.noPotion"}}]}}]}

execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§l===== 多人成就 ====="}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.finishMap = §a%%s §7# 齐心协力 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.finishMap"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.neverDied = §a%%s §7# 人多力量大 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.neverDied"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.killLessThan50 = §a%%s §7# 躺赢 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.killLessThan50"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.killMoreThan200 = §a%%s §7# 全靠我带飞 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.killMoreThan200"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.difficulty4 = §a%%s §7# 挑战极限 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.difficulty4"}}]}}]}
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.speedrun = §a%%s §7# 势如破竹 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.speedrun"}}]}}]}
