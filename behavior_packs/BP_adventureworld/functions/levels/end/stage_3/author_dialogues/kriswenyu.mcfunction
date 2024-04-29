# ===== 文雨对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7经过这么长时间的战斗你一定累了吧，给你一个毛绒拥抱！"}]}
execute @e[name=dialogue,scores={time=60}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=120..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7哇！P......PVE大佬！我见到大佬了！......膜拜大佬！"}]}
execute @e[name=dialogue,scores={time=60}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=0..119}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7经过这么长时间的战斗你一定累了吧，给你一个毛绒拥抱！"}]}
execute @e[name=dialogue,scores={time=60}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7你作弊了？不能吧......"}]}

execute @e[name=dialogue,scores={time=120}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=120..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7大佬喜欢咱画的贴图嘛！"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=..119}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a文雨（KrisWenYu）： §7喜欢咱画的贴图吗？"}]}

execute @e[name=dialogue,scores={time=140..}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=140..}] ~~~ function lib/states/dialogue/disable
