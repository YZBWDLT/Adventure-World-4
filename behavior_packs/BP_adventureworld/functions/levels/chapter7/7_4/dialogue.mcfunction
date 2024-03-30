# ===== 对话内容 =====

# --- 关卡过程中的对话 ---
execute @e[name=dialogue,scores={active=3,time=40}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7骷髅王？！！它不是已经倒下了吗？"}]}
execute @e[name=dialogue,scores={active=3,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7奇怪......为什么以前的怪物会出现在这里？"}]}
execute @e[name=dialogue,scores={active=3,time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7难不成是发生了时空错乱？"}]}
execute @e[name=dialogue,scores={active=3,time=241}] ~~~ function lib/states/dialogue/disable

execute @e[name=dialogue,scores={active=4,time=40}] ~~~ tellraw @a {"rawtext":[{"text":"* §c这里发生了时空错乱，以前的怪物也开始纷纷出现在这里了！"}]}
execute @e[name=dialogue,scores={active=4,time=41}] ~~~ function lib/states/dialogue/disable

execute @e[name=dialogue,scores={active=5,time=40}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7天哪，这个刷怪位置...这里变得越来越反常了啊。"}]}
execute @e[name=dialogue,scores={active=5,time=41}] ~~~ scoreboard players set @s active 6

execute @e[name=level,scores={data=741}] ~~~ execute @e[name=dialogue,scores={active=6}] ~~~ function lib/states/dialogue/disable

# --- 关卡结束后的对话 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §7§kahghiaojfkjasijfgnjan"}]}
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ function lib/states/dialogue/disable

