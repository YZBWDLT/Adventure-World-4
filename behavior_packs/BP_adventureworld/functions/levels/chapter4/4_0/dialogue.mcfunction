# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我现在是在啥地方啊？要被冻成冰块了qwq。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7大概是进入【寒冰神殿】了吧？"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【寒冰骷髅以冰霜之箭透人肌骨，唯革履可踏过三尺细雪】"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7怪不得......除了这些还有什么发现吗？"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7有的，铭文上还记载着【旷野之剑事记】。"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【此剑乃传说中上古剑神取天地之精华，四方之宝物，以纯阳之火淬炼至纯之钢而成】"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【其不仅有一般兵刃难以望其项背之锋利程度，更有光明魔法嵌入其中，为对抗恶魔之利器】"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【自古以来，唯有剑术高超，身负重任之人才能使用此剑】"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【大战告终，圣剑隐于此地，静候继承者之到来】"}]}
execute @e[name=dialogue,scores={active=2,time=780}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【圣剑重绽光芒之时，亦为天降大任于继承者之时】"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7吹得这么狠，我消灭恶魔的时候不也没有用它嘛。"}]}
execute @e[name=dialogue,scores={active=2,time=940}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......"}]}

execute @e[name=dialogue,scores={active=2,time=1000}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}
execute @e[name=dialogue,scores={active=2,time=1000}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7唯革履可踏过三尺细雪......"}]}
execute @e[name=dialogue,scores={active=1,time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我必须要用皮革靴子才能通过这个神殿了。"}]}
execute @e[name=dialogue,scores={active=1,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我就说嘛，怎么就给我留了一双臭皮鞋呢。"}]}

execute @e[name=dialogue,scores={active=1,time=161}] ~~~ function lib/states/dialogue/disable
