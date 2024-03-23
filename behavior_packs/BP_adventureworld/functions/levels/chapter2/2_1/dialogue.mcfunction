# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7接下来的关卡是什么样的？"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哇，下一关好大呀！还有好几棵树。"}]}
execute @e[name=dialogue,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7这里有一段描述，【梯由机关所控，追求尽善者终将一无所得】，虽然我不清楚机关是什么样子的，但这句话你不要忘了。"}]}

execute @e[name=dialogue,scores={time=201}] ~~~ function lib/states/dialogue/disable
