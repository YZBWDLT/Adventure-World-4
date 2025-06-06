# ===== 使用召唤怪物 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

execute if score developerMode settings matches 1 run say 待添加功能
execute if score developerMode settings matches 1 run playsound random.orb @s ~~~
