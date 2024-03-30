# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* 当你再次睁开眼时，发现自己身处纯白色的神殿之中......"}]}
execute @e[name=dialogue,scores={time=280}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你看到了那把传说的武器，它现在正散发着与众不同的光芒......"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ tellraw @a {"rawtext":[{"translate":"* 突然间，天上一束光照了下来，落在了台座上。"}]}

execute @e[name=dialogue,scores={time=1100}] ~~~ tellraw @a {"rawtext":[{"translate":"* 随着剑的消失，你惊奇的发现剑很识趣地替换掉了你手里的钢剑。"}]}
execute @e[name=dialogue,scores={time=1200}] ~~~ tellraw @a {"rawtext":[{"translate":"* 它告诉了你它的名字 - §e旷野之剑§r。"}]}
execute @e[name=dialogue,scores={time=1300}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你感觉身体再次变轻，听到了一个声音......"}]}

execute @e[name=dialogue,scores={time=1600}] ~~~ function lib/states/dialogue/disable
