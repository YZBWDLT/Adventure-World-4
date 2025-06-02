# ===== 关卡游戏时时间线 =====

# --- 剧情 ---

# [1] 相机变换：划过2-0
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我好像离开沙漠神殿了。接下来应该是哪呢？"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7按照铭文顺序，是【丛林神殿】。"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【蜘蛛与爬行者于密林中阻挠】"}]}
# [270] 相机变换：划过2-2
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7咦？田英去哪了，他为什么一直没说话？"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你进去之后，他就跑到神殿屋顶睡觉啦。"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §b田英： §7§o（打鼾声）"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这......不愧是他。"}]}

# --- 相机变换 ---
# [1] 划过2-0
execute if score timeline time matches 1 run camera @a set minecraft:free pos -75 19.5 23 rot 0 0
execute if score timeline time matches 2 run camera @a set minecraft:free ease 14.5 in_out_sine pos -75 19.5 57 rot 0 0
# [270] 划过2-2
execute if score timeline time matches 270 run camera @a set minecraft:free pos -74 4.5 60 rot 25 60
execute if score timeline time matches 271 run camera @a set minecraft:free ease 14.5 in_out_sine pos -93 -15.5 75 rot 0 -150

# --- 剧情结束 ---
execute if score timeline time matches 620 run function levels/chapter2/level0/complete
