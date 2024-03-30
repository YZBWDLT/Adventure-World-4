# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你拿到绳枪了吗？"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7拿到了，这就是我之前冒险用过的，太熟悉了。"}]}

execute @e[name=dialogue,scores={time=101}] ~~~ function lib/states/dialogue/disable
