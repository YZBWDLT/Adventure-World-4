# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7小心！接下来的战场熔岩会上升！"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我看到了中间一块较高的平台，那里应该是安全的。"}]}
execute @e[name=dialogue,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯，不过可要小心别热晕过去哟。"}]}
execute @e[name=dialogue,scores={time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈哈，知道知道。"}]}

execute @e[name=dialogue,scores={time=301}] ~~~ function lib/states/dialogue/disable
