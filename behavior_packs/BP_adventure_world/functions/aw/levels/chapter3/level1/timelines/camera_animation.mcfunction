# ===== 关卡后动画 =====

# --- 剧情 ---
## [1] 相机视角：镜头给到米云溪
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7在你战斗的过程中，我还翻译了其它内容。铭文上有关于【奠基】仪式的记录。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7奠基仪式？挺好，讲一讲记录了什么吧。"}]}
## [220] 相机视角：镜头给到米云溪
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【为纪念四位贤者封印魔王的英勇事迹】"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【暨将§d传说武器“旷野之剑”§7传承于后人】"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【在此修建剑之神殿，设置剑之试炼】"}]}
## [460] 相机视角：逐渐黑屏，到520完全黑屏
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【剑术不精者无资格入内】"}]}
## [540] 相机视角：镜头给到玩家，并恢复迷雾
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7原来这里的修建和§d过去的我们还有关系§7呢。"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那么，这把剑的传承人非我莫属了！"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7没想到你还有这么自恋的一面呐~理论上其他人也有获得这把剑的资格哦。不过我相信你的实力！"}]}

# --- 相机视角 ---

# [1] 镜头给到米云溪
execute if score timeline time matches 1 run camera @a set minecraft:free pos -14 10 118 facing -17 2 103

# [220] 镜头缓慢逼近剑之神殿
execute if score timeline time matches 220 run camera @a set minecraft:free pos -15.0 2 78 rot 0 0
execute if score timeline time matches 221 run camera @a set minecraft:free ease 15 in_sine pos -15.0 2 99.10 rot 0 0

# [460] 逐渐黑屏，到520完全黑屏
execute if score timeline time matches 460 run camera @a fade time 3 1 2

# [540] 镜头给到玩家，并恢复迷雾
execute if score timeline time matches 540 as @a at @s run camera @s set minecraft:free pos -181 -16 31 facing @s
execute if score timeline time matches 541 as @a at @s run camera @s set minecraft:free ease 30 linear pos ~~~
execute if score timeline time matches 540 run fog @a push aw:lake_temple gameFog

# --- 剧情结束 ---
execute if score timeline time matches 780.. run event entity @e[type=aw:npc] aw:remove_immediately
execute if score timeline time matches 780.. run scoreboard players set timeline active 3
execute if score timeline time matches 780.. run function aw/lib/events/stop_dialogue
