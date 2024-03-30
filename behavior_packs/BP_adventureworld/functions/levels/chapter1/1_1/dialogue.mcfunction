# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7就两个僵尸而已，十分轻松嘛。"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7不要掉以轻心，接下来还有会射箭的骷髅要出现。"}]}

execute @e[name=dialogue,scores={time=101}] ~~~ function lib/states/dialogue/disable
