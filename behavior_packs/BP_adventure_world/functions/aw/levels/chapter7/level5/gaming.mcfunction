# ===== 关卡游戏时时间线 =====
# 7-5

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter7/level5/waves/wave_2
## 第 2 波（BOSS 是否被清除） -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 2 unless entity @e[type=evocation_illager] run function aw/levels/chapter7/level5/complete

# --- 重命名岩浆怪 ---
function aw/lib/modify_data/rename_magma_cube

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter7/level5/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部或者脚部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s if block ~~80~ barrier positioned -225 -47 44 run function aw/lib/modify_data/out_of_border
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -225 -47 44 run function aw/lib/modify_data/out_of_border

# --- 各波潮时间线 ---
## 第 1 波
execute if score wave data matches 1 run function aw/levels/chapter7/level5/timelines/wave_1
## 第 2 波 | 每秒执行 1 次
execute if score wave data matches 2 if score tick time matches 8 run function aw/levels/chapter7/level5/timelines/wave_2

# --- 当 BOSS 血量在 1/2 以下时，触发第 2 波二阶段，并播放相应动画 ---
execute if score wave data matches 2 if score temp.stage data matches 1 if score @e[type=evocation_illager,c=1] health < temp.bossHealthOneSecond data run function aw/levels/chapter7/level5/timelines/turn_stage_anim
