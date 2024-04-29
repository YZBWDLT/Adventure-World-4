# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，云儿。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7怎么了，有危险吗？"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我来到了有很多红石机关的地方，但这里好奇怪啊，一个怪物都没有。"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7文字是怎么记录这里的？可以帮我看看么？"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......按照铭文描述，这里是【红石神殿】......但这里可能没有怪物，会有一些谜题......"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7谜题？听起来是你比较擅长的啊。莫非这里的红石机关就是谜题？可是......这些机关都处于被解开的状态啊。"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： 啊？......嗯没事了，林乐你直接前往下一个神殿就行(..＞ᴗ＜..)"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： 喂喂，怎么就没事了啊可恶，云儿你把话讲明白啊！"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： 云儿？"}]}
execute @e[name=dialogue,scores={active=2,time=780}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7啊啊啊啊啊！可恶，怎么还不理我了啊(/°Д°)/︵┻━┻"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7算了，还是赶紧完成试炼，回头再找她问问吧......"}]}

execute @e[name=dialogue,scores={active=2,time=900}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=900}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ function lib/states/dialogue/disable
