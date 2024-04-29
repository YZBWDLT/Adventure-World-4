# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我拿到你说的那个绳枪了！"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯！可惜铭文上没有记载它的具体用法，恐怕需要你研究研究......"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没事，这就是我之前冒险用过的，我对它可太熟悉了。"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7啊，太好了！"}]}

execute @e[name=dialogue,scores={time=241}] ~~~ function lib/states/dialogue/disable
