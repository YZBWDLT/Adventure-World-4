# ===== 关卡游戏时时间线 =====
# 5-0 | 红石神殿

# --- 剧情 ---

## [1] 相机视角：5-0 视角
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，云儿。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7怎么了，有危险吗？"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我来到了有很多红石机关的地方，但这里好奇怪啊，一个怪物都没有。"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7文字是怎么记录这里的？可以帮我看看么？"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......按照铭文描述，这里是【红石神殿】......但这里可能没有怪物，会有一些谜题......"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7谜题？听起来是你比较擅长的啊。莫非这里的红石机关就是谜题？可是......这些机关都处于被解开的状态啊。"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7啊？......嗯没事了，林乐你直接前往下一个神殿就行(..＞ᴗ＜..)"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7喂喂，怎么就没事了啊可恶，云儿你把话讲明白啊！"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿？"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7啊啊啊啊啊！可恶，怎么还不理我了啊(/°Д°)/︵┻━┻"}]}
execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7算了，还是赶紧完成试炼，回头再找她问问吧......"}]}

# --- 相机视角 ---

## [1] 5-0 视角
execute if score timeline time matches 1 run camera @a set minecraft:free pos -89 -23 -19 facing -101 -30 -7
execute if score timeline time matches 2 run camera @a set minecraft:free ease 45 linear pos -101 -23 -19 facing -89 -30 -7

# --- 剧情结束 ---
## 纯战斗模式下直接跳过剧情
execute if score storyMode settings matches 0 run function aw/levels/chapter5/level0/complete
## [900] 结束剧情
execute if score timeline time matches 900.. run function aw/levels/chapter5/level0/complete
