# ===== 剧情线 =====


execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7林乐啊，你来了，我有很重要的事情要告诉你。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7您请说，是什么事？"}]}

execute @e[name=dialogue,scores={time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7我年轻的时候，曾经发现了一块神奇的金属碎片。"}]}
execute @e[name=dialogue,scores={time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7就在湖边的山脚下。就在我端详着它的时候，就见那大山轰的一声，突然就打开了。"}]}
execute @e[name=dialogue,scores={time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7在山的后面我看到了一片小湖，湖的中央矗立着一座上了年代的建筑......好像是通往地下的某个遗迹的入口。"}]}
execute @e[name=dialogue,scores={time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7碎片似乎是进入的钥匙，但我并没有能进去的资格。"}]}
execute @e[name=dialogue,scores={time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7不知怎么，离开后我对武器产生了很大的兴趣，成为了一名铁匠，专门打造利剑。"}]}

execute @e[name=dialogue,scores={time=960}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7只可惜后来......因为种种变故，我放弃了做铁匠，隐姓埋名，来到这里做了商人。"}]}
execute @e[name=dialogue,scores={time=1060}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7这么多年过去了，看到你这个剑术天才，我想也许这是你的机会。"}]}
execute @e[name=dialogue,scores={time=1160}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7碎片我一直留着，现在我把它给你，也告诉你前往那里的路，这也许就是为你而准备的。"}]}

execute @e[name=dialogue,scores={time=1360}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7谢谢您，我叫上朋友一起去那里看看。"}]}

execute @e[name=dialogue,scores={time=1460}] ~~~ function lib/dialogue/disable
