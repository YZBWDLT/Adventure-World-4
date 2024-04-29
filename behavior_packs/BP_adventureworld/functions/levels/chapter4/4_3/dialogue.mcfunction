# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7看起来，这里就是寒冰神殿的最后一部分了。云儿，等会我会遇到什么样的守关怪物呢？"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......接下来比较特殊，应该会源源不断地出现怪物。镇守在这里的，是守卫者......"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这样啊？不过没关系，任何怪物都将被我绳之以法=p"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7不不不，你听我说完嘛。铭文写着【守卫者于此地获不死之身】，它们是不会受到伤害的。不要恋战，坚持住就是胜利！"}]}
execute @e[name=dialogue,scores={time=320}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7什么？还有无法受到伤害的怪......好吧，撤回我上一句说的话qwq。"}]}

execute @e[name=dialogue,scores={time=321}] ~~~ function lib/states/dialogue/disable
