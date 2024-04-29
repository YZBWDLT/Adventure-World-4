# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7刚才一路上各种机关，要不是我反应足够敏捷，恐怕要命丧于此了。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7而且那个巨大的骷髅王打人疼的要死，设计关卡的家伙真可恶啊！o(≧口≦)o"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7是很可恶呢=p"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你要面临的下一部分，是......【湖泊神殿】。"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【溺尸携深海守卫者隐于水下，守卫者之魁首镇守于此】"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7看样子，【湖泊神殿】的怪物很不好对付呀。"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7刚刚通过【丛林神殿】的时候，你有没有获得3种药水？"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7倒是获得了，不过我还不明白它们的效果，不敢乱喝。云儿，你那边有什么线索吗？"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7具体每一瓶的药效没有记载啊，不过......"}]}
execute @e[name=dialogue,scores={active=2,time=780}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【秘药不可兼得，性烈而各有毒】"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我在战斗过程中只能选择一瓶来用？"}]}
execute @e[name=dialogue,scores={active=2,time=940}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7是的，而且这三种药水都会伴随一些副作用，需要你自己来权衡了。"}]}
execute @e[name=dialogue,scores={active=2,time=1020}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7善加利用的话，应该会对你的战斗过程有巨大帮助吧。"}]}

execute @e[name=dialogue,scores={active=2,time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}
execute @e[name=dialogue,scores={active=2,time=1060}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7据说这个地方比较容易迷路，你多留个心眼啊！"}]}
execute @e[name=dialogue,scores={active=1,time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7你怎么知道我已经迷路了......"}]}
execute @e[name=dialogue,scores={active=1,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哦对了，这里还说【海之仙灵将赋予勇者以劈水之力】，也许存在能让你在水下游得更自在的力量哦。"}]}
execute @e[name=dialogue,scores={active=1,time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好awa，我会多加利用的！"}]}

execute @e[name=dialogue,scores={active=1,time=241}] ~~~ function lib/states/dialogue/disable
