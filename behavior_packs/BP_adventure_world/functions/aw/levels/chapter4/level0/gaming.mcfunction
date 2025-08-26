# ===== 关卡游戏时时间线 =====
# 4-0 | 寒冰神殿

# --- 剧情 ---

## [1] 相机视角：4-1 视角
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我现在是在啥地方啊？要被冻成冰块了qwq。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7大概是进入【§d寒冰神殿§7】了吧？"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【§d寒冰骷髅以冰霜之箭透人肌骨，唯革履可踏过三尺细雪§7】"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7怪不得......除了这些还有什么发现吗？"}]}
## [380] 相机视角：4-2 和 4-3 过道视角
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7有的，铭文上还记载着【旷野之剑事记】。"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【此剑乃传说中上古剑神取天地之精华，四方之宝物，以纯阳之火淬炼至纯之钢而成】"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【其不仅有一般兵刃难以望其项背之锋利程度，更有光明魔法嵌入其中，为对抗恶魔之利器】"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【自古以来，唯有剑术高超，身负重任之人才能使用此剑】"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【大战告终，圣剑隐于此地，静候继承者之到来】"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【圣剑重绽光芒之时，亦为天降大任于继承者之时】"}]}
## [780] 相机视角：4-2 和 4-3 过道视角
execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7吹得这么狠，我消灭恶魔的时候不也没有用它嘛。"}]}
execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7......"}]}

# --- 相机视角 ---

## [1] 4-1 视角
execute if score timeline time matches 1 run camera @a set minecraft:free pos -168 21.0 -16 facing -159 17 -26
execute if score timeline time matches 1 run camera @a set minecraft:free ease 60 linear pos -159 17 -26

## [380] 4-2 和 4-3 过道视角
execute if score timeline time matches 380 run camera @a clear
execute if score timeline time matches 381 run camera @a set minecraft:free pos -156 10.0 20 facing -156 -10 20
execute if score timeline time matches 382 run camera @a set minecraft:free ease 19.5 linear pos -156 -9.7 20

## [780] 回到玩家视角
execute if score timeline time matches 780 run camera @a set minecraft:free pos -164 18.3 -12 facing -164 10 -12
execute if score timeline time matches 781 as @a at @s anchored eyes run camera @s set minecraft:free ease 11 in_out_sine pos ^^^0.3 facing ^^^1

# --- 剧情结束 ---
## 纯战斗模式下直接跳过剧情
execute if score storyMode settings matches 0 run function aw/levels/chapter4/level0/complete
## [1000] 结束剧情
execute if score timeline time matches 1000.. run function aw/levels/chapter4/level0/complete
