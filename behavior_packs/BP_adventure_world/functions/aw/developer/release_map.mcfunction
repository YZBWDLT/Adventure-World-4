# ===== 开发者模式的游戏规则设置 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---
## 清除结束剧情中，stage2和stage3的独有结构
execute if score developerMode settings matches 1 run fill -29 3 -45 -25 1 -45 air
execute if score developerMode settings matches 1 run fill -29 3 -45 -28 3 -45 bookshelf
execute if score developerMode settings matches 1 run structure load aw:lecture_no_book -27 1 -45
execute if score developerMode settings matches 1 run setblock -25 7 -51 air
execute if score developerMode settings matches 1 run fill -13 2 86 -18 1 87 air
## 清除所有 NPC
execute if score developerMode settings matches 1 run event entity @e[type=aw:npc] aw:remove_immediately
## 重置所有的统计数据
execute if score developerMode settings matches 1 run function aw/lib/modify_data/init/record
## 跳转到开幕关卡
execute if score developerMode settings matches 1 run function aw/levels/open/before_stage/start
