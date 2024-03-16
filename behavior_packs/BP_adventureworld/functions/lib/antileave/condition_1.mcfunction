# ===== 防退出系统 =====
# 用于在存在退出重进的玩家时调用。
# 单独开一个函数，以降低同时执行的命令数。

# 调用此方法时：
# · 执行者为退出重进的玩家（isOnline.@s=0）
# · 执行位置为该玩家的位置
# · 上级函数为lib/antileave/main
# 输出结果：
# 当该玩家不在死亡状态下时，将该玩家传送到附近的存活在线玩家上
# 修正退出玩家的数据

tp @s[scores={isAlive=0}] @a[scores={isAlive=2},c=1]
tellraw @s[scores={isAlive=0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您传送到附近的玩家位置。"}]}

scoreboard players set @s isAlive 2
