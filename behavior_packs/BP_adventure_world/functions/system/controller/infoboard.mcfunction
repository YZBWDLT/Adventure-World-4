# ===== 信息板 =====

# --- 初始化 ---

## 程序结束标记 | 这里标记data.@a为breakFlag，因为后面需要分别让不同玩家执行，不适合用全局变量，但是又懒得新建记分板了……
scoreboard players set @a data 0

# --- 获取关卡进度标记 ---
# 仅当关卡处于游玩状态时检测
execute if score tick time matches 1 if score levelCompleted data matches 0 run function lib/get_data/wave_name

# --- 物品信息板 ---
# 当玩家手持特殊物品时，显示该特殊物品的信息板

## 治疗药水
titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§a治疗药水§r\n\n§a生命 §l↑§r"}]}
scoreboard players set @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] data 1
## 生长药水
titleraw @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b生长药水§r\n\n§a生命上限 §l↑§r\n§a生命恢复 §l↑§r\n§c攻击伤害 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
scoreboard players set @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] data 1
## 亢奋药水
titleraw @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b亢奋药水§r\n\n§a攻击伤害 §l↑§r\n§a移动速度 §l↑§r\n§c生命 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
scoreboard players set @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] data 1
## 神龟药水
titleraw @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§b神龟药水§r\n\n§a抗性 §l↑§r\n§a伤害吸收 §l↑↑§r\n§c移动速度 §l↓§r\n\n§c和其他主药水冲突\n一局只能选择一类"}]}
scoreboard players set @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] data 1
## 重生药水
titleraw @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§d重生药水§r\n\n§a生命 §l↑↑§r\n§c攻击伤害 §l↓↓§r§f[☹ 短时]"}]}
scoreboard players set @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] data 1
## 净化药水
titleraw @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§e净化药水§r\n\n§a伤害吸收 §l↑§r\n§a中毒解除 §l↑↑§r"}]}
scoreboard players set @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] data 1
## 休眠药水
titleraw @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§l§d休眠药水§r\n\n§a生命恢复 §l↑↑§r§f[☹ 短时]\n§c移动速度 §l↓↓§r§f[☹ 短时]\n\n§c不建议和生长药水混用"}]}
scoreboard players set @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] data 1
## 御风珠
titleraw @a[hasitem={item=aw:wind_pearl,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§b§l御风珠§r\n\n§f可将你传送到木板上"}]}
scoreboard players set @a[hasitem={item=aw:wind_pearl,location=slot.weapon.mainhand}] data 1

# --- 关卡信息板 ---
# 仅当玩家未手持特殊物品时，显示关卡信息板

## 获取信息板类型
function lib/get_data/infoboard_type
## 单人纯战斗模式
execute if score storyMode settings matches 0 if score playerAmount data matches 1 as @a[scores={data=0}] at @s run function lib/modify_data/levels/info_single_combat
## 单人剧情模式
execute if score storyMode settings matches 1 if score playerAmount data matches 1 as @a[scores={data=0}] at @s run function lib/modify_data/levels/info_single_story
## 多人纯战斗模式
execute if score storyMode settings matches 0 if score playerAmount data matches 2.. as @a[scores={data=0}] at @s run function lib/modify_data/levels/info_multi_combat
## 多人剧情模式
execute if score storyMode settings matches 1 if score playerAmount data matches 2.. as @a[scores={data=0}] at @s run function lib/modify_data/levels/info_multi_story

# --- 程序结束后的变量设置 ---
## 移除临时变量
scoreboard players reset @a data
