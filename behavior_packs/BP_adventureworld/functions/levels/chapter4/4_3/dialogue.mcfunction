# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7接下来会刷出源源不断的怪物，你不要恋战，坚持住就是胜利。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7放心吧，任何怪物在我手下都活不过五秒。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7不不不，这里说了：【守卫者于此地获不死之身，不懈者方可前行】，它们可是打不死的，你要坚持到最后才能成功。"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7啊这......"}]}

execute @e[name=dialogue,scores={time=241}] ~~~ function lib/states/dialogue/disable
