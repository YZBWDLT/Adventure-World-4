# ===== 关卡游戏时时间线 =====
# 2-1

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter2/level1/waves/wave_2
## 第 2 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function aw/levels/chapter2/level1/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter2/level1/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部检查到上方80格为屏障就立刻判定为出界
#（见下文） execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -75 19 60 run function aw/lib/events/player_out_of_border
execute as @a[tag=spectator,scores={deathState=0}] positioned -79 19 26 if entity @s[r=2] run tp @s -75 19 60

# --- 阻止玩家通过活塞出界 ---
# 检查到 #112 多人情况下，玩家可以在2-1通过不断推拉活塞卡出房间：
# https://github.com/YZBWDLT/Adventure-World-4/issues/112
# 所以，采用与【阻止旁观模式的玩家出界】相同的方式阻止玩家出界
execute as @a at @s anchored eyes if block ~~80~ barrier positioned -75 19 60 run function aw/lib/events/player_out_of_border
