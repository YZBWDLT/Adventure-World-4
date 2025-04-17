# ===== 开发者模式的游戏规则设置 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

## 初始化所有游戏规则设置
execute if score developerMode settings matches 1 run function lib/modify_data/init/gamerule

## 更改开发者模式下的设置
execute if score developerMode settings matches 1 run gamerule commandblockoutput true
execute if score developerMode settings matches 1 run gamerule doentitydrops true
execute if score developerMode settings matches 1 run gamerule dotiledrops true
execute if score developerMode settings matches 1 run gamerule naturalregeneration true
execute if score developerMode settings matches 1 run gamerule sendcommandfeedback true
execute if score developerMode settings matches 1 run gamerule showbordereffect true
execute if score developerMode settings matches 1 run gamerule showcoordinates true
