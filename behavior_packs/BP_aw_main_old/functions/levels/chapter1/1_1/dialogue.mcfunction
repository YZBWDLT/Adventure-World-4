# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7切~就两个僵尸而已，十分轻松嘛。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7试炼嘛，肯定要循序渐进的。不要掉以轻心，接下来骷髅就要出现啦。"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
