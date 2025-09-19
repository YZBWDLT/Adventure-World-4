# ===== 关卡游戏时时间线 =====
# 7-5

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter7/level5/waves/wave_2
## 第 2 波（BOSS 是否被清除） -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 2 unless entity @e[type=evocation_illager] run function aw/levels/chapter7/level5/complete

# --- 重命名岩浆怪 ---
function aw/lib/events/rename_magma_cube

# --- 阻止玩家出界 ---
# 详细原理可以见我们给出的地图文档，文档链接见主函数（aw/system/main）

## 阻止旁观玩家出界
execute as @a[scores={deathState=0,spectator=!0}] at @s anchored eyes if block ~~80~ barrier positioned -225 -47 44 run function aw/lib/events/player_out_of_border
## 当玩家在上一关重生点时，回到本关
execute as @a positioned -225 -17 99 if entity @s[r=2] run tp @s -225 -47 44

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter7/level5/fail

# --- 各波潮时间线 ---
## 第 1 波
execute if score wave data matches 1 run function aw/levels/chapter7/level5/timelines/wave_1
## 第 2 波 | 每秒执行 1 次
execute if score wave data matches 2 if score tick time matches 8 run function aw/levels/chapter7/level5/timelines/wave_2

# --- 当 BOSS 血量在 1/2 以下时，触发第 2 波二阶段，并播放相应动画 ---
execute if score wave data matches 2 if score temp.stage data matches 1 if score @e[type=evocation_illager,c=1] health < temp.bossHealthOneSecond data run function aw/levels/chapter7/level5/timelines/turn_stage_anim
