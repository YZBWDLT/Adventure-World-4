# ===== 关卡游戏时时间线 =====
# 0-5 | 进入剑之试炼神殿（开幕时间线）

# --- 剧情 ---
execute if score timeline time matches 160 run title @a title §1
execute if score timeline time matches 160 run title @a subtitle §3作者 §b一只卑微的量筒 狂野巴豆
execute if score timeline time matches 250 run title @a title §1
execute if score timeline time matches 250 run title @a subtitle §3联合作者 §bo绿叶o 文雨
# [250] 相机变换：续杯黑屏
execute if score timeline time matches 340 run title @a title §1
execute if score timeline time matches 340 run title @a subtitle §3出品 §b极筑工坊
# [410] 相机变换：续杯黑屏
execute if score timeline time matches 429 run title @a times 0 60 0
execute if score timeline time matches 430 run title @a title ■■ ■ ■■
execute if score timeline time matches 470 as @a at @s run playsound random.anvil_use @s ~~~ 100 0.75
execute if score timeline time matches 470 run title @a title §l冒险 ■ ■■
execute if score timeline time matches 480 run title @a title §l冒险 小 ■■
execute if score timeline time matches 490 run title @a title §l冒险 小 世界
execute if score timeline time matches 510 as @a at @s run playsound random.orb @s
execute if score timeline time matches 510 run title @a subtitle §o剑之试炼

## 如果是从纯战斗模式触发的，则还要再额外触发剧情
execute if score timeline time matches 610 if score storyMode settings matches 0 run tellraw @a {"rawtext":[{"text":"* 村里一位老伯和你说，有一把传说的武器藏在了某个试炼之中。"}]}
execute if score timeline time matches 710 if score storyMode settings matches 0 run tellraw @a {"rawtext":[{"text":"* 你顺着线索找到了试炼，走了进去......"}]}

# --- 相机变换 ---

## [250] 续杯黑屏
execute if score timeline time matches 250 run camera @a fade time 0 10 0 color 0 0 0
## [410] 续杯黑屏
execute if score timeline time matches 250 run camera @a fade time 0 10 5 color 0 0 0

# --- 剧情结束 ---

## [610] 如果是剧情模式，则结束
execute if score timeline time matches 610 if score storyMode settings matches 1 run function levels/open/stage5/complete
## [810] 如果是纯战斗模式，则延迟结束
execute if score timeline time matches 810 if score storyMode settings matches 0 run function levels/open/stage5/complete
