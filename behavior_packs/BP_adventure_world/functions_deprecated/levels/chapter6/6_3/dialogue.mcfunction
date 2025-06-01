# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，这里竟然出现了岩浆！这场景，看起来危机四伏啊。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ execute @e[name=isNetease,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【烈焰王镇守此地，熔岩之海将焚毁万物】，看样子，你马上就要面对山峦神殿的守关怪物了......小心！接下来的战场岩浆可能会上升啊！"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ execute @e[name=isNetease,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【烈焰王镇守此地，熔岩之海将焚毁万物】，看样子，你一会儿就要面对山峦神殿的守关怪物了......小心！接下来的战场岩浆可能会上升啊！"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没事，我看到了中间一块较高的平台，那里应该是安全的。"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯，不过你可别热晕过去啦。"}]}
execute @e[name=dialogue,scores={time=320}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哈哈，知道知道。"}]}

execute @e[name=dialogue,scores={time=321}] ~~~ function lib/states/dialogue/disable
