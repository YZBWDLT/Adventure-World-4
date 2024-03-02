# ===== 使用虚拟准星后 =====

# --- 清除之 ---
clear @s aw:summon_monsters

# --- 数值操作 ---

## 先获取开发者模式情况
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能无法在非开发者模式下使用"}]}

## 开发者模式启用后执行

### 强制调用本关的怪物数据并强制立即生成
execute @s[scores={temp=1}] ~~~ function lib/monster_summon_delay/disable
execute @s[scores={temp=1,inLevelArea=11}] ~~~ function levels/chapter1/1_1/monster_settings
execute @s[scores={temp=1,inLevelArea=12}] ~~~ function levels/chapter1/1_2/monster_settings
execute @s[scores={temp=1,inLevelArea=13}] ~~~ function levels/chapter1/1_3/monster_settings
execute @s[scores={temp=1,inLevelArea=21}] ~~~ function levels/chapter2/2_1/monster_settings
execute @s[scores={temp=1,inLevelArea=22}] ~~~ function levels/chapter2/2_2/monster_settings
execute @s[scores={temp=1,inLevelArea=23}] ~~~ function levels/chapter2/2_3/monster_settings
execute @s[scores={temp=1,inLevelArea=31}] ~~~ function levels/chapter3/3_1/monster_settings
execute @s[scores={temp=1,inLevelArea=32}] ~~~ function levels/chapter3/3_2/monster_settings
execute @s[scores={temp=1,inLevelArea=33}] ~~~ function levels/chapter3/3_3/monster_settings
execute @s[scores={temp=1,inLevelArea=34}] ~~~ function levels/chapter3/3_4/monster_settings
execute @s[scores={temp=1,inLevelArea=41}] ~~~ function levels/chapter4/4_1/monster_settings
execute @s[scores={temp=1,inLevelArea=42}] ~~~ function levels/chapter4/4_2/monster_settings
execute @s[scores={temp=1,inLevelArea=43}] ~~~ function levels/chapter4/4_3/monster_settings
execute @s[scores={temp=1,inLevelArea=44}] ~~~ function levels/chapter4/4_4/monster_settings
execute @s[scores={temp=1,inLevelArea=61}] ~~~ function levels/chapter6/6_1/monster_settings
execute @s[scores={temp=1,inLevelArea=62}] ~~~ function levels/chapter6/6_2/monster_settings
execute @s[scores={temp=1,inLevelArea=63}] ~~~ function levels/chapter6/6_3/monster_settings
execute @s[scores={temp=1,inLevelArea=64}] ~~~ function levels/chapter6/6_4/monster_settings
execute @s[scores={temp=1,inLevelArea=71}] ~~~ function levels/chapter7/7_1/monster_settings
execute @s[scores={temp=1,inLevelArea=72}] ~~~ function levels/chapter7/7_2/monster_settings
execute @s[scores={temp=1,inLevelArea=73}] ~~~ function levels/chapter7/7_3/monster_settings
execute @s[scores={temp=1,inLevelArea=74}] ~~~ function levels/chapter7/7_4/monster_settings
execute @s[scores={temp=1,inLevelArea=75}] ~~~ function levels/chapter7/7_5/monster_settings
execute @s[scores={temp=1}] ~~~ function lib/monsters/summoner_controller
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"已尝试生成本关对应的怪物"}]}
execute @s[scores={temp=1}] ~~~ playsound random.orb @s ~~~

scoreboard players set @s temp 0

# --- 给予之 ---
replaceitem entity @s slot.weapon.mainhand 0 aw:summon_monsters 1 0 {"item_lock":{"mode":"lock_in_inventory"}}