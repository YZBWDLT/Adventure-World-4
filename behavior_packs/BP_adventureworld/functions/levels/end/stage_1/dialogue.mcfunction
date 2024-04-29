# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊！我成功了！这就是旷野之剑！"}]}
execute @e[name=dialogue,scores={time=140}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐——！刚刚我怎么都联系不上你，我可担心死你了！真的等你等到花都要谢啦，差不多等了......§a%%s§7分钟！","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}
execute @e[name=dialogue,scores={time=220}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7我就知道老朋友你能做到！"}]}
execute @e[name=dialogue,scores={time=300}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7呦，睡得怎么样啊。"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ execute @e[name=allFailedTimes,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7很好啦，毕竟你的实力永远是那么值得信赖。"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ execute @e[name=allFailedTimes,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7挺不错的，虽然还是被你的惨叫声吵醒过一回，但总的来说你表现的还是特别棒。"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ execute @e[name=allFailedTimes,scores={data=2..9}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7我可没有一直在睡觉，也在努力帮助你呢，大概有......§a%%s§7次吧。","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=allFailedTimes]"}}]}}]}
execute @e[name=dialogue,scores={time=380}] ~~~ execute @e[name=allFailedTimes,scores={data=10..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7怎么会啊，我比你还累，足足干了§a%%s§7次活。不得不说，你的惨叫声都快把我的耳朵清理干净了！-_-||","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=allFailedTimes]"}}]}}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，按照铭文，这把剑应该可以告诉我们空间贤者的力量在哪里了。"}]}
execute @e[name=dialogue,scores={time=540}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7用心感受剑的声音吧，拜托你了。"}]}
execute @e[name=dialogue,scores={time=620}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7嗯。"}]}
execute @e[name=dialogue,scores={time=700}] ~~~ tellraw @a {"rawtext":[{"translate":"* 我轻闭双眼，握紧了剑柄，将银白色的剑轻轻贴在额头处。"}]}
execute @e[name=dialogue,scores={time=780}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好像......在北方的海洋深处......有一股强劲的黑暗风暴……还有一个声音在呼唤。"}]}
execute @e[name=dialogue,scores={time=860}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7看来空间贤者就在那里！"}]}
execute @e[name=dialogue,scores={time=940}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7我们回去准备准备就出发！这一次一定要做个了断！"}]}
execute @e[name=dialogue,scores={time=1020}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7对！过去的我们没能实现的事情，这次一定得彻底了结！"}]}

execute @e[name=dialogue,scores={time=1061}] ~~~ function lib/states/dialogue/disable
