# ===== 小鼠对话 =====

## --- 单人正常难度通关 ---
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ execute @e[name=score,scores={data=60..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ execute @e[name=score,scores={data=0..59}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7可恶，你的评分怎么这么低......哼哼哼啊啊啊啊啊啊啊！§8[原文如此]"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7啥？你居然作弊了？？嗯......没关系的，多练习下迟早不需要作弊的，期待你能够无作弊通关噢~"}]}

execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable

## --- 单人最高难度通关 ---
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7五瓦！你做到了！！你真的做到了！！！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7没想到真的会有人去尝逝挑战这么坐牢的模式（悲）"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7感谢你费心游玩此图！喜欢这地图的话不妨多多支持下awa"}]}

execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ function lib/states/dialogue/disable

## --- 多人正常难度通关 ---
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7还想坐牢的话尝试去把所有的成就都完成了罢awa"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable

## --- 多人最高难度通关 ---
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7恭喜！大佬们的配合相当不错（喜）"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7不知道这难度对你们来说是洒洒水还是汗流浃背awa"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a小鼠（xiaoshu512）： §7一起期待下一部作品吧！咕咕咕咕咕咕"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ function lib/states/dialogue/disable
