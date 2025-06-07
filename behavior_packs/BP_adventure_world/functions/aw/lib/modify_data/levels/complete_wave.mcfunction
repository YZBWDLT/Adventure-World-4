# ===== 怪物波潮结束通用函数 =====
# 试炼中怪物波潮通用的内容。用于在怪物波潮结束时调用。
# 调用此方法时：无需修饰。

# --- 关卡参数 ---
## 波数
scoreboard players add wave data 1
## 补充箭
scoreboard players set allowArrowSupply data 1

# --- 提示玩家进入第 X 波 ---
function aw/lib/modify_data/title
titleraw @a subtitle {"rawtext":[{"translate":"第 §a%%s §f波","with":{"rawtext":[{"score":{"objective":"data","name":"wave"}}]}}]}

# --- 释放玩家 ---

## 释放玩家并将玩家传送到入口处
gamemode adventure @a[tag=spectator]
execute as @a[tag=spectator] run function aw/lib/level_pos_data/teleport
## 移除玩家的状态效果
effect @a[tag=spectator] clear
## 给予玩家额外的治疗药水
give @a[tag=spectator] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @a[tag=spectator] {"rawtext":[{"translate":"§7您已被释放并给予一瓶治疗药水，注意安全！"}]}
## 移除玩家的旁观者标记
tag @a remove spectator
