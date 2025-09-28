# ===== 关卡游戏后时间线 =====
# 7-0 | 封印神殿

# --- 剧情 ---

## [1] 功能：先行封闭 7-1 出口
## [50] 功能：显示封印神殿的标题
execute if score storyMode settings matches 0 if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"§c* 准备好了吗？这是你最后的试炼。"}]}
execute if score storyMode settings matches 1 if score timeline time matches 120 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7§o（深吸一口气）§r§7这......不知道什么原因和云儿联络不了了。"}]}
execute if score storyMode settings matches 1 if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §r§7看样子这是最后的大关了......放心吧！我可是勇气贤者啊！"}]}
## [350] 功能：自动开启 7-1

# --- 功能 ---

## [50] 显示封印神殿的标题
execute if score timeline time matches 50 run titleraw @a times 0 100 0
execute if score timeline time matches 50 run titleraw @a title {"rawtext":[{"translate":"§c§l封 印 神 殿"}]}
execute if score timeline time matches 50 run titleraw @a subtitle {"rawtext":[{"translate":"§cFINAL TEMPLE"}]}
execute if score timeline time matches 50 as @a at @s run playsound beacon.power @s ~~~ 1 1 1
execute if score timeline time matches 70 run effect @a clear
## [350] 自动开启 7-1
execute if score timeline time matches 350 run function aw/levels/chapter7/level1/start
