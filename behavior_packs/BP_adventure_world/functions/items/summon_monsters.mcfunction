# ===== 使用召唤怪物 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

execute if score developerMode settings matches 1 run function lib/states/monster_summon_delay/disable
execute if score developerMode settings matches 1 if entity @s[scores={chapter=1,level=1}] run function levels/chapter1/1_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=1,level=2}] run function levels/chapter1/1_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=1,level=3}] run function levels/chapter1/1_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=2,level=1}] run function levels/chapter2/2_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=2,level=2}] run function levels/chapter2/2_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=2,level=3}] run function levels/chapter2/2_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=3,level=1}] run function levels/chapter3/3_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=3,level=2}] run function levels/chapter3/3_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=3,level=3}] run function levels/chapter3/3_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=3,level=4}] run function levels/chapter3/3_4/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=4,level=1}] run function levels/chapter4/4_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=4,level=2}] run function levels/chapter4/4_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=4,level=3}] run function levels/chapter4/4_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=4,level=4}] run function levels/chapter4/4_4/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=6,level=1}] run function levels/chapter6/6_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=6,level=2}] run function levels/chapter6/6_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=6,level=3}] run function levels/chapter6/6_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=6,level=4}] run function levels/chapter6/6_4/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=7,level=1}] run function levels/chapter7/7_1/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=7,level=2}] run function levels/chapter7/7_2/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=7,level=3}] run function levels/chapter7/7_3/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=7,level=4}] run function levels/chapter7/7_4/monster_settings
execute if score developerMode settings matches 1 if entity @s[scores={chapter=7,level=5}] run function levels/chapter7/7_5/monster_settings
execute if score developerMode settings matches 1 run function lib/monsters/summoner_controller
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"已尝试生成本关对应的怪物"}]}

execute if score developerMode settings matches 1 run playsound random.orb @s ~~~
