# ===== 所有怪物设定函数注册表 =====
# 该函数记录了何时应该执行这些怪物设定函数

# --- 显示标题 ---
function lib/title
execute @e[name=gameId,scores={data=!750}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-%%s§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=chapter]"}},{"score":{"objective":"data","name":"@e[name=level]"}},{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

## BOSS关卡
execute @e[name=gameId,scores={data=230}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=gameId,scores={data=640}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=2..5,data=!3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=gameId,scores={data=750}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c§l最 终 关 §r§f| 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

# --- 获取地图难度 ---
# 关卡4-4、6-4、7-5采用不同的生成方式，需要动态获取难度
function lib/get_data/difficulty

# --- 触发怪物生成函数 ---
execute @e[name=gameId,scores={data=110}] ~~~ function levels/chapter1/1_1/monster_settings
execute @e[name=gameId,scores={data=120}] ~~~ function levels/chapter1/1_2/monster_settings
execute @e[name=gameId,scores={data=130}] ~~~ function levels/chapter1/1_3/monster_settings
execute @e[name=gameId,scores={data=210}] ~~~ function levels/chapter2/2_1/monster_settings
execute @e[name=gameId,scores={data=220}] ~~~ function levels/chapter2/2_2/monster_settings
execute @e[name=gameId,scores={data=230}] ~~~ function levels/chapter2/2_3/monster_settings
execute @e[name=gameId,scores={data=310}] ~~~ function levels/chapter3/3_1/monster_settings
execute @e[name=gameId,scores={data=320}] ~~~ function levels/chapter3/3_2/monster_settings
execute @e[name=gameId,scores={data=330}] ~~~ function levels/chapter3/3_3/monster_settings
execute @e[name=gameId,scores={data=340}] ~~~ function levels/chapter3/3_4/monster_settings
execute @e[name=gameId,scores={data=410}] ~~~ function levels/chapter4/4_1/monster_settings
execute @e[name=gameId,scores={data=420}] ~~~ function levels/chapter4/4_2/monster_settings
execute @e[name=gameId,scores={data=430}] ~~~ function levels/chapter4/4_3/monster_settings
execute @e[name=gameId,scores={data=440}] ~~~ function levels/chapter4/4_4/monster_settings
execute @e[name=gameId,scores={data=610}] ~~~ function levels/chapter6/6_1/monster_settings
execute @e[name=gameId,scores={data=620}] ~~~ function levels/chapter6/6_2/monster_settings
execute @e[name=gameId,scores={data=630}] ~~~ function levels/chapter6/6_3/monster_settings
execute @e[name=gameId,scores={data=640}] ~~~ function levels/chapter6/6_4/monster_settings
execute @e[name=gameId,scores={data=710}] ~~~ function levels/chapter7/7_1/monster_settings
execute @e[name=gameId,scores={data=720}] ~~~ function levels/chapter7/7_2/monster_settings
execute @e[name=gameId,scores={data=730}] ~~~ function levels/chapter7/7_3/monster_settings
execute @e[name=gameId,scores={data=740}] ~~~ function levels/chapter7/7_4/monster_settings
execute @e[name=gameId,scores={data=750}] ~~~ function levels/chapter7/7_5/monster_settings
