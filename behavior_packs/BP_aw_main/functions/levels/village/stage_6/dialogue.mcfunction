# ===== 剧情线 =====

# --- 主线 ---
execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哇，好神奇的建筑啊！"}]}
execute @e[name=dialogue,scores={time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7入口有点像我之前去过的各种神殿诶。"}]}
execute @e[name=dialogue,scores={time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7感觉特别像是那个盾之试炼的入口。"}]}
execute @e[name=dialogue,scores={time=330}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7你这么一说还真是。或许......值得探索一番？"}]}
execute @e[name=dialogue,scores={time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7说不定还能提供一些有助于寻找空间贤者的线索！"}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7线索......对了，云儿你看看，神殿的墙壁上有没有刻字？"}]}

execute @e[name=dialogue,scores={time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7太好了！真的有文字，而且保存得很完整！"}]}
execute @e[name=dialogue,scores={time=740}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7漂亮！这样你就可以进行解读工作了！"}]}
execute @e[name=dialogue,scores={time=820}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7第一行字应该是标题，写的是......【剑之试炼】"}]}
execute @e[name=dialogue,scores={time=900}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【只有通过严格考验的剑术天才，才有资格继承旷野之剑】......"}]}
execute @e[name=dialogue,scores={time=980}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7听见没？林乐，又是你的工作。"}]}
execute @e[name=dialogue,scores={time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好，我这就进去！"}]}
execute @e[name=dialogue,scores={time=1140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7等一等！里面可能非常危险，等我把内容全部解读完再说吧。"}]}
execute @e[name=dialogue,scores={time=1220}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7没关系，让他去吧。都是老朋友了，你我都知道，凭他的实力不会有问题的。"}]}
execute @e[name=dialogue,scores={time=1300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7是啊，不必担心我。"}]}
execute @e[name=dialogue,scores={time=1380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......好吧。不过答应我们，一定要保护好自己！"}]}
execute @e[name=dialogue,scores={time=1460}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7对了，把这个带上吧。"}]}
execute @e[name=dialogue,scores={time=1540}] ~~~ tellraw @a {"rawtext":[{"text":"§f你已获得 §a[传声石结晶] §f！"}]}
execute @e[name=dialogue,scores={time=1620}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这是......？"}]}
execute @e[name=dialogue,scores={time=1700}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7这是拿云儿家的特产——传声石做的结晶，有了它，就可以让我们随时保持联系。"}]}
execute @e[name=dialogue,scores={time=1780}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7另外一个在我这里，你在底下要多多和我报平安啊！"}]}
execute @e[name=dialogue,scores={time=1860}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7没问题，别忘了和我说说你的解读进展哈。"}]}
execute @e[name=dialogue,scores={time=1940}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}

execute @e[name=dialogue,scores={time=1941}] ~~~ function lib/states/dialogue/disable

# --- 玩家入水3秒后 ---
execute @e[name=dialogue,scores={time=2001}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7喂喂！你在干什么！试炼入口不在水里啊！"}]}
execute @e[name=dialogue,scores={time=2080}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7水下没有刻字。不过谢谢你，研究刻字的事全盘交给我就好啦。"}]}

execute @e[name=dialogue,scores={time=2081}] ~~~ function lib/states/dialogue/disable
