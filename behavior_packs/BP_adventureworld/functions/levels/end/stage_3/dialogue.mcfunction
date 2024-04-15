# ===== 对话 =====

execute @e[name=dialogue,scores={active=1,time=140}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7云儿，对了，之前红石神殿的事......"}]}
execute @e[name=dialogue,scores={active=1,time=220}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7别问我，你自己去你家楼下看嘛！我要说的都在那儿了哦。"}]}
execute @e[name=dialogue,scores={active=1,time=300}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好吧......qwq"}]}

execute @e[name=dialogue,scores={active=1,time=301}] ~~~ function lib/states/dialogue/disable

execute @e[name=dialogue,scores={active=3,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你是要再来一次试炼吗？"}]}
execute @e[name=dialogue,scores={active=3,time=2}] ~~~ function lib/states/dialogue/disable
