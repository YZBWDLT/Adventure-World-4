# ===== 防退出系统 =====
# 用于在存在退出重进的玩家时调用。
# 单独开一个函数，以降低同时执行的命令数。

# 调用此方法时：
# · 执行者为退出重进（isOnline.@s=0）且在游戏状态（isAlive.@s=0..1）
# · 执行位置为该玩家的位置
# · 上级函数为lib/antileave/main
# 输出结果：
# 当该玩家的位置和该关卡的位置吻合时，不做处理
# 当该玩家的位置和该玩家的位置不吻合时，传送到重生点上
# 修正退出玩家的数据

## 检测玩家的位置数据和关卡数据是否匹配
## 如果是匹配的，temp2.@s=0 且 temp3.@s=0
scoreboard players operation @s temp2 -= @e[name=level] temp
scoreboard players operation @s temp3 -= @e[name=level] temp2

## 当出现了不匹配后，给玩家填上标签matchLevelFailed
## 如此做是将有一项不满足的条件转换，达成与门的效果，防止同样的命令执行2次
tag @a[scores={temp2=!0}] add matchLevelFailed
tag @a[scores={temp3=!0}] add matchLevelFailed

## 如果该玩家不匹配，获取波次复活设置的启用状态
## 保存到temp.@s上
scoreboard players operation @s[tag=matchLevelFailed] temp = @e[name=respawnInNewWave] settings

# 将出现不匹配的玩家传送到观战区
tp @s[tag=matchLevelFailed] @e[family=respawner,c=1]
tellraw @s[tag=matchLevelFailed,scores={temp=0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本关结束后您将被释放。"}]}
tellraw @s[tag=matchLevelFailed,scores={temp=1}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本波结束后您将被释放。"}]}

# 修正数据
scoreboard players set @s[tag=matchLevelFailed] isAlive 0
tag @s remove matchLevelFailed
