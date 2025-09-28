# ===== 关卡游戏时时间线 =====
# 3-0 | 湖泊神殿

# --- 剧情 ---

## [1] 相机视角：3-2 视角
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7刚才一路上各种机关，要不是我反应足够敏捷，恐怕要命丧于此了。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7而且那个巨大的骷髅王打人疼的要死，设计关卡的家伙真可恶啊！o(≧口≦)o"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7是很可恶呢=p"}]}
## [300] 相机视角：3-3 视角
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你要面临的下一部分，是......【§d湖泊神殿§7】。"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【§d溺尸携深海守卫者隐于水下，守卫者之魁首镇守于此§7】"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7看样子，【湖泊神殿】的怪物很不好对付呀。"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7刚刚通过【丛林神殿】的时候，你有没有获得3种药水？"}]}
## [600] 相机视角：3-1 视角
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7倒是获得了，不过我还不明白它们的效果，不敢乱喝。云儿，你那边有什么线索吗？"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7具体每一瓶的药效没有记载啊，不过......"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【秘药不可兼得，性烈而各有毒】"}]}
execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7也就是说，我在§d战斗过程中只能选择一瓶来用§7？"}]}
## [900] 相机视角：回到玩家视角
execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7是的，而且这三种药水都会§d伴随一些副作用§7，需要你自己来权衡了。"}]}
execute if score timeline time matches 1020 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7善加利用的话，应该会对你的战斗过程有巨大帮助吧。"}]}

# --- 相机视角 ---

# [1] 3-2 视角
execute if score timeline time matches 1 run camera @a set minecraft:free pos -176 -14 5 facing -188 -21 19
execute if score timeline time matches 2 run camera @a set minecraft:free ease 15 in_out_sine pos -187 -18.5 18 facing -173 -20 2

# [300] 3-3 视角
execute if score timeline time matches 300 run camera @a set minecraft:free pos -163 -18 29 facing -163 -32 29
execute if score timeline time matches 301 run camera @a set minecraft:free ease 15 in_out_sine pos -163 -31.9 29 facing -163 -33 29

# [600] 3-1 视角
execute if score timeline time matches 600 run camera @a set minecraft:free pos -192.9 -17.5 24 rot 0 90
execute if score timeline time matches 601 run camera @a set minecraft:free ease 15 in_sine pos -186 -19.5 29 rot 0 -89

# [900] 回到玩家视角
execute if score timeline time matches 900 as @a at @s anchored eyes run camera @s set minecraft:free ease 10 in_out_sine pos ^^^0.3 facing ^^^1

# --- 剧情结束 ---
## 纯战斗模式下直接跳过剧情
execute if score storyMode settings matches 0 run function aw/levels/chapter3/level0/complete
## [1100] 结束剧情
execute if score timeline time matches 1100 run function aw/levels/chapter3/level0/complete
