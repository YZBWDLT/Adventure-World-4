# ===== 所有怪物设定函数注册表 =====
# 该函数记录了何时应该执行这些怪物设定函数

## --- 显示标题 ---
scoreboard players operation @e[name=level] temp = @e[name=level] background
execute @e[name=level] ~~~ function methods/3_digit_seperator
function methods/title
titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-%%s§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=level]"}},{"score":{"objective":"temp2","name":"@e[name=level]"},{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}

### BOSS关卡
execute @e[name=level,scores={background=230}] ~~~ execute @e[name=wave,scores={background=4}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=level,scores={background=340}] ~~~ execute @e[name=wave,scores={background=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=level,scores={background=640}] ~~~ execute @e[name=wave,scores={background=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}

## --- 触发怪物生成函数 ---
execute @e[name=level,scores={background=110}] ~~~ function levels/chapter1/1_1/monster_settings
execute @e[name=level,scores={background=120}] ~~~ function levels/chapter1/1_2/monster_settings
execute @e[name=level,scores={background=130}] ~~~ function levels/chapter1/1_3/monster_settings
execute @e[name=level,scores={background=210}] ~~~ function levels/chapter2/2_1/monster_settings
execute @e[name=level,scores={background=220}] ~~~ function levels/chapter2/2_2/monster_settings
execute @e[name=level,scores={background=230}] ~~~ function levels/chapter2/2_3/monster_settings
execute @e[name=level,scores={background=310}] ~~~ function levels/chapter3/3_1/monster_settings
execute @e[name=level,scores={background=320}] ~~~ function levels/chapter3/3_2/monster_settings
execute @e[name=level,scores={background=330}] ~~~ function levels/chapter3/3_3/monster_settings
execute @e[name=level,scores={background=340}] ~~~ function levels/chapter3/3_4/monster_settings
execute @e[name=level,scores={background=410}] ~~~ function levels/chapter4/4_1/monster_settings
execute @e[name=level,scores={background=420}] ~~~ function levels/chapter4/4_2/monster_settings
execute @e[name=level,scores={background=430}] ~~~ function levels/chapter4/4_3/monster_settings
execute @e[name=level,scores={background=440}] ~~~ function levels/chapter4/4_4/monster_settings
execute @e[name=level,scores={background=610}] ~~~ function levels/chapter6/6_1/monster_settings
execute @e[name=level,scores={background=620}] ~~~ function levels/chapter6/6_2/monster_settings
execute @e[name=level,scores={background=630}] ~~~ function levels/chapter6/6_3/monster_settings
execute @e[name=level,scores={background=640}] ~~~ function levels/chapter6/6_4/monster_settings
execute @e[name=level,scores={background=710}] ~~~ function levels/chapter7/7_1/monster_settings
execute @e[name=level,scores={background=720}] ~~~ function levels/chapter7/7_2/monster_settings
execute @e[name=level,scores={background=730}] ~~~ function levels/chapter7/7_3/monster_settings
execute @e[name=level,scores={background=740}] ~~~ function levels/chapter7/7_4/monster_settings
execute @e[name=level,scores={background=750}] ~~~ function levels/chapter7/7_5/monster_settings