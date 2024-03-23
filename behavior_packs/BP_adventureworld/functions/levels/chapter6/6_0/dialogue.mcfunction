# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7到山峦神殿了。"}]}
execute @e[name=dialogue,scores={active=2,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7加油，很快就能拿到旷野之剑了！"}]}
execute @e[name=dialogue,scores={active=2,time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【山峦神殿】"}]}
execute @e[name=dialogue,scores={active=2,time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【丛山之间，巫师及毒虫势要万分当心。烈焰之魂镇守此地，熔岩之海将焚毁万物】"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7另外，还有一个重大发现！我找到了【空间贤者事记】！"}]}
execute @e[name=dialogue,scores={active=2,time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【恶魔强大异常，众多源泉赋予其无穷之法力】"}]}
execute @e[name=dialogue,scores={active=2,time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【虽其躯体可锢于封印，然其法术终难根除之】"}]}
execute @e[name=dialogue,scores={active=2,time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【是故，吾将吾之咒术赋予此剑，赐其永除邪法之力】"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【待预言之决断之日，圣剑之光所指之处，吾之法力亦在】"}]}
execute @e[name=dialogue,scores={active=2,time=960}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那么说来，这把剑与我们要寻找的空间贤者也有关系。"}]}
execute @e[name=dialogue,scores={active=2,time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我一定要成功拿到！"}]}

execute @e[name=dialogue,scores={active=2,time=1100}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=1100}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"提示：如果你找不到下一关的入口，不妨试试穿过滴水石锥看看。"}]}
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ function lib/states/dialogue/disable
