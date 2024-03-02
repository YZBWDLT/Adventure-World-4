# ===== 强制生成怪物 =====

## 强制关闭怪物生成延迟
function lib/monster_summon_delay/disable

## 强制调用怪物生成
function lib/monsters/summoner_controller

## 快捷调整波数
execute @e[type=egg] ~~~ scoreboard players add @e[name=wave] data 1
scoreboard players set @e[name=wave,scores={data=!1..5}] data 1
execute @e[type=egg] ~~~ tellraw @a {"rawtext":[{"translate":"关卡波数已被更改为%%s","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}
execute @e[type=egg] ~~~ kill @s

execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=11}] ~~~ function levels/chapter1/1_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=12}] ~~~ function levels/chapter1/1_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=13}] ~~~ function levels/chapter1/1_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=21}] ~~~ function levels/chapter2/2_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=22}] ~~~ function levels/chapter2/2_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=23}] ~~~ function levels/chapter2/2_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=31}] ~~~ function levels/chapter3/3_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=32}] ~~~ function levels/chapter3/3_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=33}] ~~~ function levels/chapter3/3_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=34}] ~~~ function levels/chapter3/3_4/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=41}] ~~~ function levels/chapter4/4_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=42}] ~~~ function levels/chapter4/4_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=43}] ~~~ function levels/chapter4/4_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=44}] ~~~ function levels/chapter4/4_4/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=61}] ~~~ function levels/chapter6/6_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=62}] ~~~ function levels/chapter6/6_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=63}] ~~~ function levels/chapter6/6_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=64}] ~~~ function levels/chapter6/6_4/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=71}] ~~~ function levels/chapter7/7_1/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=72}] ~~~ function levels/chapter7/7_2/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=73}] ~~~ function levels/chapter7/7_3/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=74}] ~~~ function levels/chapter7/7_4/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ execute @s[scores={inLevelArea=75}] ~~~ function levels/chapter7/7_5/monster_settings
execute @e[type=snowball] ~~~ execute @a[c=1] ~~~ tellraw @s {"rawtext":[{"translate":"已尝试生成本关对应的怪物"}]}
execute @e[type=snowball] ~~~ kill @s