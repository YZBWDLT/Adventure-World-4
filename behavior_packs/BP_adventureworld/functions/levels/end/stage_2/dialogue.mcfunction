# ===== 对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7林乐，墙壁上全部文字的翻译，我已经写成书放到你家的楼下了哦。"}]}
execute @e[name=dialogue,scores={time=140}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7诶，米云溪和你聊天的时候，是不是没有告诉你剑之试炼的设计者啊？=P"}]}
execute @e[name=dialogue,scores={time=220}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7你这么一说......是啊，我只知道这个神殿是为了纪念四贤者封印恶魔而建造的。"}]}
execute @e[name=dialogue,scores={time=300}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7等下，四贤者......？不就是......"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7那你再猜猜，旷野之剑可是剑术天才的武器哦，你觉得以前会是谁的呢？"}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7啊？嘶......该不会是......"}]}
execute @e[name=dialogue,scores={time=540}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7再告诉你个好消息，剑之试炼也是他设计的哦。=D"}]}
execute @e[name=dialogue,scores={time=620}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7欸？？？？？"}]}
execute @e[name=dialogue,scores={time=700}] ~~~ tellraw @a {"rawtext":[{"translate":"* §b田英： §7哈哈哈哈哈哈哈！过去挖下的坑，如今还是得自己填呀！"}]}
execute @e[name=dialogue,scores={time=780}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7唉！早知道把坑挖浅点了，现在可是自作自受了。qwq"}]}

execute @e[name=dialogue,scores={time=820}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=820}] ~~~ function lib/states/dialogue/disable

