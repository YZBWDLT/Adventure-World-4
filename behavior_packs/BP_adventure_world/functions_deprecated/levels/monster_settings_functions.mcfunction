# ===== 所有怪物设定函数注册表 =====
# 该函数记录了何时应该执行这些怪物设定函数

# --- 显示标题 ---
# function lib/title
# titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-%%s§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=chapter]"}},{"score":{"objective":"data","name":"@e[name=level]"}},{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

## BOSS关卡
# execute @e[name=gameId,scores={data=230}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
# execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
# execute @e[name=gameId,scores={data=640}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
# execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=2..5,data=!3}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
# execute @e[name=gameId,scores={data=750}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c§l最 终 关 §r§f| 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}
