# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7刚才一路上各种机关，要不是我足够灵敏，恐怕要葬命于此了。"}]}
execute @e[name=dialogue,scores={active=2,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7而且那个巨大的骷髅王打人疼的要死，设计关卡的家伙真可恶。"}]}
execute @e[name=dialogue,scores={active=2,time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哈哈哈，这不彰显出我们的勇气贤者厉害嘛！"}]}
execute @e[name=dialogue,scores={active=2,time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你要面临的下一部分，是......【湖泊神殿】。"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【溺尸携深海守卫者隐于水下，守卫者之魁首镇守于此】"}]}
execute @e[name=dialogue,scores={active=2,time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7我从读到的内容里面了解到一些信息，虽然不容易理解，但是我知道的是，一会儿怪物的强度应该会很大。"}]}
execute @e[name=dialogue,scores={active=2,time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你刚刚应该获得了3瓶大药水对吗？"}]}
execute @e[name=dialogue,scores={active=2,time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7是啊，我还不明白它们的效果，不敢乱喝。云儿，你有什么线索吗？"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7当然，幸好这里的文字记载足够详细。"}]}
execute @e[name=dialogue,scores={active=2,time=960}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【主药水者，不可兼得，正效助之，副效随之】"}]}
execute @e[name=dialogue,scores={active=2,time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我在战斗过程中只能选择一瓶来用？"}]}
execute @e[name=dialogue,scores={active=2,time=1160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7是的，而且这三种药水都会伴随一些副作用，需要你自己来权衡了。"}]}
execute @e[name=dialogue,scores={active=2,time=1260}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7不过如果把它们利用好了，应该会对你的战斗过程有巨大帮助。"}]}

execute @e[name=dialogue,scores={active=2,time=1300}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=1300}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7据说这个地方比较容易迷路，你多留意一下吧。"}]}
execute @e[name=dialogue,scores={active=1,time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7你怎么知道我迷路了......"}]}

execute @e[name=dialogue,scores={active=1,time=101}] ~~~ function lib/states/dialogue/disable
