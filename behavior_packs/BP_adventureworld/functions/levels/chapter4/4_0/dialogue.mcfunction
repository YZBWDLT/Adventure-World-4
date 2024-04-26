# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7这里是【寒冰神殿】。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【寒冰骷髅以冰霜之箭透人肌骨，唯革履可踏过三尺细雪】"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7除了这些还有什么发现吗？"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7有的，【旷野之剑事记】"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【此剑乃传说中上古剑神取天地之精华，四方之宝物，以纯阳之火淬炼至纯之钢而成】"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【其不仅有一般兵刃难以望其项背的锋利程度，更有光明魔法嵌入其中，为对抗恶魔之利器】"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【自古以来，唯有剑术高超，身负重任之人才能使用此剑】"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【大战告终，圣剑隐于此地，静候继承者之到来】"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【圣剑重绽光芒之时，亦为天降大任于继承者之时】"}]}
execute @e[name=dialogue,scores={active=2,time=780}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7吹得这么狠，我消灭恶魔的时候不也没有用它嘛。"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......"}]}

execute @e[name=dialogue,scores={active=2,time=900}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}
execute @e[name=dialogue,scores={active=2,time=900}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7唯革履可踏过三尺细雪......"}]}
execute @e[name=dialogue,scores={active=1,time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我必须要依靠皮革靴子才能通过这个神殿了。"}]}

execute @e[name=dialogue,scores={active=1,time=81}] ~~~ function lib/states/dialogue/disable
