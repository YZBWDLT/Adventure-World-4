# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7千万要小心女巫和蜘蛛啊！"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7不怕，我现在的装备强得可怕，即使中毒也无大碍。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7林乐......你一直都是这样......"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7欸欸欸......我们可不是什么都做不到的啊！"}]}

execute @e[name=dialogue,scores={time=241}] ~~~ function lib/states/dialogue/disable
