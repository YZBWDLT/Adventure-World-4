# ===== 成就查询函数 =====
# 调用此函数以查询所有成就的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释"}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 单人成就 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.completeMap = §a%%s §7# 神剑的恩赐 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.completeMap"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.notDied = §a%%s §7# 让田英睡觉去吧！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.notDied"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty2 = §a%%s §7# 挑战自我 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty2"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty3 = §a%%s §7# 举步维艰 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty3"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.difficulty4 = §a%%s §7# 这不可能！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.difficulty4"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.speedrun = §a%%s §7# 别挡道，我很急！ | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.speedrun"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.singlePlayer.noPotion = §a%%s §7# 纯天然 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.singlePlayer.noPotion"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 多人成就 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.completeMap = §a%%s §7# 齐心协力 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.completeMap"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.notDied = §a%%s §7# 人多力量大 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.notDied"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.killLessThan50 = §a%%s §7# 躺赢 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.killLessThan50"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.killMoreThan200 = §a%%s §7# 全靠我带飞 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.killMoreThan200"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.difficulty4 = §a%%s §7# 挑战极限 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.difficulty4"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.achievement.multiPlayer.speedrun = §a%%s §7# 势如破竹 | 0=未完成，1=已完成","with":{"rawtext":[{"score":{"objective":"record","name":"achievement.multiPlayer.speedrun"}}]}}]}
