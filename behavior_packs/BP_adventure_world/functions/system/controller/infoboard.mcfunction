# ===== 信息板 =====

# --- 初始化 ---

## 空闲信息板（0）
scoreboard players set temp.infoboardType data 0
## 战斗信息板（1，标准状态）
execute if score levelCompleted data matches 0 unless score level data matches 0 run scoreboard players set temp.infoboardType data 1
## 战斗信息板（2，4-4）
execute if score temp.infoboardType data matches 1 if score chapter data matches 4 if score level data matches 4 run scoreboard players set temp.infoboardType data 2
## 战斗信息板（3，6-4）
execute if score temp.infoboardType data matches 1 if score chapter data matches 6 if score level data matches 4 run scoreboard players set temp.infoboardType data 3
## 战斗信息板（4，7-5）
execute if score temp.infoboardType data matches 1 if score chapter data matches 7 if score level data matches 5 run scoreboard players set temp.infoboardType data 4
## 隐藏信息板（-1，7-0）
execute if score chapter data matches 7 if score level data matches 0 run scoreboard players set temp.infoboardType data -1

# --- 物品信息板 ---
# 当玩家手持特殊物品时，显示该特殊物品的信息板

## 治疗药水
titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§a治疗药水§r\n\n§a生命 §l↑§r"}]}
tag @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 生长药水
titleraw @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b生长药水§r\n\n§a生命上限 §l↑§r\n§a生命恢复 §l↑§r\n§c攻击伤害 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
tag @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 亢奋药水
titleraw @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b亢奋药水§r\n\n§a攻击伤害 §l↑§r\n§a移动速度 §l↑§r\n§c生命 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
tag @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 神龟药水
titleraw @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b神龟药水§r\n\n§a抗性 §l↑§r\n§a伤害吸收 §l↑↑§r\n§c移动速度 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
tag @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 重生药水
titleraw @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§d重生药水§r\n\n§a生命 §l↑↑§r\n§c攻击伤害 §l↓↓§r§f[☹ 短时]"}]}
tag @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 净化药水
titleraw @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§e净化药水§r\n\n§a伤害吸收 §l↑§r\n§a中毒解除 §l↑↑§r"}]}
tag @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 休眠药水
titleraw @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§d休眠药水§r\n\n§a生命恢复 §l↑↑§r§f[☹ 短时]\n§c移动速度 §l↓↓§r§f[☹ 短时]\n\n§c不建议和生长药水混用"}]}
tag @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] add infoboardBreakFlag
## 御风珠
titleraw @a[hasitem={item=aw:wind_pearl,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§b§l御风珠§r\n\n§f可将你传送到木板上"}]}
tag @a[hasitem={item=aw:wind_pearl,location=slot.weapon.mainhand}] add infoboardBreakFlag

# --- 关卡信息板 ---
# 仅当玩家未手持特殊物品时，显示关卡信息板

## 单人纯战斗模式
execute if score storyMode settings matches 0 if score playerAmount data matches 1 as @a[tag=!infoboardBreakFlag] at @s run function lib/modify_data/levels/info_single_combat
## 单人剧情模式
execute if score storyMode settings matches 1 if score playerAmount data matches 1 as @a[tag=!infoboardBreakFlag] at @s run function lib/modify_data/levels/info_single_story
## 多人纯战斗模式
execute if score storyMode settings matches 0 if score playerAmount data matches 2.. as @a[tag=!infoboardBreakFlag] at @s run function lib/modify_data/levels/info_multi_combat
## 多人剧情模式
execute if score storyMode settings matches 1 if score playerAmount data matches 2.. as @a[tag=!infoboardBreakFlag] at @s run function lib/modify_data/levels/info_multi_story

# --- 程序结束后的变量设置 ---
## 移除临时变量
tag @a remove infoboardBreakFlag
scoreboard players reset temp.infoboardType data
