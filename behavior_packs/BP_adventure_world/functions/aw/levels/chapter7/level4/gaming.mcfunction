# ===== 关卡游戏时时间线 =====
# 7-4

# --- 检查怪物是否全部清除 ---
## 关卡完成倒计时
execute if score levelCompleteCountdown time matches 1.. if score monsterAmount data matches 0 run scoreboard players remove levelCompleteCountdown time 1
execute if score levelCompleteCountdown time matches 1.. unless score monsterAmount data matches 0 run scoreboard players set levelCompleteCountdown time 60
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 if score levelCompleteCountdown time matches ..0 run function aw/levels/chapter7/level4/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 if score levelCompleteCountdown time matches ..0 run function aw/levels/chapter7/level4/waves/wave_3
## 第 3 波 -> 第 4 波
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 run function aw/levels/chapter7/level4/waves/wave_4
## 第 4 波 -> 第 5 波
execute unless entity @e[type=aw:spawner] if score wave data matches 4 if score monsterAmount data matches 0 run function aw/levels/chapter7/level4/waves/wave_5
## 第 5 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 5 if score monsterAmount data matches 0 run function aw/levels/chapter7/level4/complete

# --- 重命名岩浆怪 ---
function aw/lib/modify_data/rename_magma_cube

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter7/level4/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部或者脚部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s if block ~~80~ barrier positioned -225 -17 99 run function aw/lib/modify_data/out_of_border
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -225 -17 99 run function aw/lib/modify_data/out_of_border

# --- 烈焰王生成怪物 ---
# 仅当 BOSS 血量不足 2/3 时执行
execute if score @e[type=aw:blaze_king,c=1] health < temp.bossHealthTwoThird data if score tick time matches 11 run function aw/levels/chapter7/level4/events/spawn_monster

# --- 剧情 ---

## 第 2 波的剧情
execute if score wave data matches 2 if score storyMode settings matches 1 if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7骷髅王？！！它不是已经倒下了吗？"}]}
execute if score wave data matches 2 if score storyMode settings matches 1 if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7奇怪......为什么以前的怪物会出现在这里？"}]}
execute if score wave data matches 2 if score storyMode settings matches 1 if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7难不成是发生了时空错乱？"}]}
execute if score wave data matches 2 if score storyMode settings matches 1 if score timeline time matches 301 run function aw/lib/modify_data/states/timeline/disable_time_lapse

execute if score wave data matches 2 if score storyMode settings matches 0 if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"* §c这里发生了时空错乱，以前的怪物也开始纷纷出现在这里了！"}]}
execute if score wave data matches 2 if score storyMode settings matches 0 if score timeline time matches 101 run function aw/lib/modify_data/states/timeline/disable_time_lapse

## 第 5 波的剧情

execute if score wave data matches 5 if score storyMode settings matches 1 if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7天哪，这个刷怪位置...这里变得越来越反常了啊。"}]}
execute if score wave data matches 5 if score storyMode settings matches 1 if score timeline time matches 101 run function aw/lib/modify_data/states/timeline/disable_time_lapse

execute if score wave data matches 5 if score storyMode settings matches 0 if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§7§o以防误解，烈焰王的刷怪位置没有出问题哦"}]}
execute if score wave data matches 5 if score storyMode settings matches 0 if score timeline time matches 101 run function aw/lib/modify_data/states/timeline/disable_time_lapse
