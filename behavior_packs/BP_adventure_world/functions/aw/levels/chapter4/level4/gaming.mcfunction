# ===== 关卡游戏时时间线 =====
# 4-4

# --- 怪物生成 ---
## 令下一个怪物的剩余时间进行倒计时
execute if score tick time matches 0 run scoreboard players remove temp.nextMonster time 1
## 当倒计时为 0 后，尝试生成怪物并重置倒计时
execute if score temp.nextMonster time matches 0 run function aw/levels/chapter4/level4/events/spawn_monster

# --- 胜利条件 ---
## 令下一个怪物的剩余时间进行倒计时
execute if score tick time matches 1 run scoreboard players remove temp.remainingTime time 1
## 当关卡剩余时间为 0 时，结束关卡
execute if score temp.remainingTime time matches 0 run function aw/levels/chapter4/level4/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter4/level4/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -141 -30 6 run function aw/lib/events/player_out_of_border
# 阻止部分因网络波动的玩家意外在上一关以冒险模式重生（#110，见https://github.com/YZBWDLT/Adventure-World-4/issues/110）
# 无论何种情况，玩家实际上在上一关的位置都是不符合预期的
execute as @a positioned -156 -11 14 if entity @s[r=2] run tp @s -141 -30 6
