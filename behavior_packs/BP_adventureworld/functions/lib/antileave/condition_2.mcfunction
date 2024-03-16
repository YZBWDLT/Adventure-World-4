# ===== 防退出系统 =====
# 用于在存在退出重进的玩家时调用。
# 单独开一个函数，以降低同时执行的命令数。

# 调用此方法时：
# · 执行者为退出重进（isOnline.@s=0）且不在游戏状态（isAlive.@s=2）
# · 执行位置为该玩家的位置
# · 上级函数为lib/antileave/main
# 输出结果：
# 当该玩家不在死亡状态下时，将该玩家传送到附近的重生点上
# 修正退出玩家的数据


tp @s @e[family=respawner,c=1]
scoreboard players set @s isAlive 0

scoreboard players operation @s temp = @e[name=respawnInNewWave] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本关结束后您将被释放。"}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本波结束后您将被释放。"}]}
