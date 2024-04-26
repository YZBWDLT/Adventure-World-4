# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7你来了林乐，我想跟你聊一件事。"}]}
execute @e[name=dialogue,scores={time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7您请说，是什么事？"}]}

execute @e[name=dialogue,scores={time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7是这样，我年轻的时候，在湖边的山脚下发现了一块神奇的金属碎片。"}]}
execute @e[name=dialogue,scores={time=340}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7就在我端详着它的时候，只见那大山轰的一声，突然就开了。"}]}
execute @e[name=dialogue,scores={time=420}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7在山的后面我看到了一片小湖，湖的中央居然有一座上了年代的建筑......好像是通往地下的某个神庙的入口。"}]}
execute @e[name=dialogue,scores={time=500}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7碎片似乎是进入的钥匙，但只可惜，后来我发现我并没有能进去的资格。"}]}
execute @e[name=dialogue,scores={time=580}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7也不知怎么的，离开那个地方后，我就对武器产生了很大的兴趣，成为了一名铁匠，专门为各路勇士打造利剑。"}]}

execute @e[name=dialogue,scores={time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7只可惜后来......因为种种变故，我放弃了做铁匠，隐姓埋名来到这里，做了商人。"}]}
execute @e[name=dialogue,scores={time=780}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7这么多年过去了，看到你这个剑术天才，我想也许那个神庙是专门为你而生的。"}]}
execute @e[name=dialogue,scores={time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §e张宇： §7碎片我一直留着，现在我把它给你，也告诉你前往那里的路，愿你归来能够有所收获。"}]}

execute @e[name=dialogue,scores={time=940}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好，谢谢您！我叫上朋友一起去那里看看。"}]}

execute @e[name=dialogue,scores={time=941}] ~~~ function lib/states/dialogue/disable
