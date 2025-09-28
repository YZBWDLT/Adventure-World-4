# ===== 使用切换波数 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

execute if score developerMode settings matches 1 run scoreboard players add wave data 1
execute if score developerMode settings matches 1 unless score wave data matches 1..5 run scoreboard players set wave data 1
execute if score developerMode settings matches 1 run tellraw @s{"rawtext":[{"translate":"关卡波数已被更改为%%s","with":{"rawtext":[{"score":{"objective":"data","name":"wave"}}]}}]}
execute if score developerMode settings matches 1 run playsound random.orb @s ~~~
