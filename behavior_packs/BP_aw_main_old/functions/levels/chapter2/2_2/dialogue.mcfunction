# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，接下来就是丛林神殿的守关怪物了吧。 "}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7已经到这个神殿的最后一关了？铭文写着【守关者为骷髅之王】，你千万要小心啊！"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
