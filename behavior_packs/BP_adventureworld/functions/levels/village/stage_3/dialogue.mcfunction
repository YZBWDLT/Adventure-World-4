# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，你在这里啊！"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你来了？这里就是你之前穿越时间的地方吧。"}]}
execute @e[name=dialogue,scores={time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7是啊，你之前对我的经历很感兴趣，等事情都解决了，我可以带着你再一起穿越看看。"}]}
execute @e[name=dialogue,scores={time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哈哈，我确实挺想的，不过当务之急还是得弄清空间贤者的下落才是。"}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7唉，真发愁啊，现在一点线索都没有。你有什么发现吗？"}]}
execute @e[name=dialogue,scores={time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7刚才我正好发现了很奇特的东西，你来看看，或许能有些帮助。"}]}
execute @e[name=dialogue,scores={time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哦？"}]}
execute @e[name=dialogue,scores={time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你看这里，墙壁上的这些花纹有着很明显的刻印的痕迹......"}]}
execute @e[name=dialogue,scores={time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7我怀疑......它们是某种文字，记录了某些内容。"}]}
execute @e[name=dialogue,scores={time=960}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7文字？你很了解古文字的，能认出它们来吗？"}]}
execute @e[name=dialogue,scores={time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7我很确信这就是我熟悉的古文字，但是......这些字损毁太严重了，我找不到任何有价值的内容。"}]}
execute @e[name=dialogue,scores={time=1160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也许其他建筑上保存的文字会完整一些，之后去调查一下。"}]}
execute @e[name=dialogue,scores={time=1260}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7那些神殿里有好多怪物的，要去也要一起去调查呀！"}]}
execute @e[name=dialogue,scores={time=1360}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7（从树林里出来）喂！你们两个！"}]}
execute @e[name=dialogue,scores={time=1460}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哎呀，出场好歹打个招呼呀！吓我们一跳！"}]}
execute @e[name=dialogue,scores={time=1560}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7刚才商店的老板说要找你，你过去一趟吧，看他神情有点奇怪。"}]}
execute @e[name=dialogue,scores={time=1660}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我这就过去，云儿你和他也讲讲刚才的发现。"}]}
execute @e[name=dialogue,scores={time=1760}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}

execute @e[name=dialogue,scores={time=1760}] ~~~ function lib/states/dialogue/disable
