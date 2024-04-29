# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我怎么总感觉等会会有点危险啊。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......铭文这里有一段描述，【梯由机关所控，追求尽善者终将一无所得】......我看不太明白，也许之后会有一些机关......？"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7【追求尽善者终将一无所得】......？行，我先记着这句话。"}]}

execute @e[name=dialogue,scores={time=161}] ~~~ function lib/states/dialogue/disable
