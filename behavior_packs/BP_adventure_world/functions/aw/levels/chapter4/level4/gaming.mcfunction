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

# --- 阻止玩家出界 ---
# 详细原理可以见我们给出的地图文档，文档链接见主函数（aw/system/main）

## 阻止旁观玩家出界
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -141 -30 6 run function aw/lib/events/player_out_of_border
## 当玩家在上一关重生点时，回到本关
execute as @a positioned -156 -11 14 if entity @s[r=2] run tp @s -141 -30 6
## 阻止玩家关门时跑出房间
execute as @a at @s if block ~~80~ positioned -141 -30 6 run function aw/lib/events/player_out_of_border

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter4/level4/fail
