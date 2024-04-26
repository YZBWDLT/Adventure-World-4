# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7对了，有没有关于这把剑封印恶魔的记录？"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......没有。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7真浪费，这么好的武器没人用。"}]}

execute @e[name=dialogue,scores={time=161}] ~~~ function lib/states/dialogue/disable
