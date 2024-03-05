# ===== 防退出系统 =====
# 用于在存在退出重进的玩家时调用。
# 单独开一个函数，以降低同时执行的命令数。

# 调用此方法时：
# · 执行者为退出重进的玩家（isOnline.@s=0）
# · 执行位置为该玩家的位置
# 输出结果：
# 1. 玩家以“正在游戏”状态回归，然而此时处于未在游戏中的状态时 | 将该玩家传送到附近的玩家位置，并修正数据
# 2. 玩家以“未在游戏”状态回归，然而此时应当处于游戏中的状态 | 将该玩家传送到重生点的位置，并修正数据
# 3. 玩家以“正在游戏”状态回归，且此时处于游戏中的状态，但是玩家的关卡位置数据落后于关卡进度 | 将该玩家传送到重生点的位置，并修正数据

# --- 初始化玩家数据 ---
scoreboard players add @s isAlive 0
scoreboard players add @s deathTimes 0

# --- 获取玩家的章节关卡数、现在的关卡进度数据 ---
# 关卡进度：章节、关卡数、状态（0正在游戏，1未在游戏） -> temp.level、temp2.level、temp3.level
# 玩家位置：章节、关卡数、状态（01正在游戏，2未在游戏） -> temp2.@s、temp3.@s、isAlive.@s

function lib/get_data/entity_location
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/get_data/3_digit_seperator
scoreboard players operation @s temp = @s position
function lib/get_data/3_digit_seperator

# --- 第一种情况的修正 ---
# 为防止玩家在死亡状态下退出重进从而导致被困在重生点里，先将死亡的玩家传送到最近的玩家附近，并进行提示

##      ↓ 不在游戏状态下                     ↓ 重新修改执行者为退出玩家            ↓ 令其执行条件1命令
execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={isOnline=0}] ~~~ function lib/antileave/condition_1

# --- 对第二种情况的修正 ---
# 当检测到该玩家处于“未在游戏”状态时（isAlive.@s=2），将该玩家传送到观战区域，进行提示并修正游戏状态

##      ↓ 在游戏状态下                       ↓ 重新修改执行者为退出且不在游戏状态的玩家       ↓ 令其执行条件2命令
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isOnline=0,isAlive=2}] ~~~ function lib/antileave/condition_2

# --- 对第三种情况的修正 ---
# 当检测到该玩家处于“正在游戏”状态时（isAlive.@s=0..1），将该玩家传送到观战区域，进行提示并修正游戏状态
# 【这里修改了temp2.@s和temp3.@s的数据，如需再次使用这两个值，请将命令写到这个模块的前面】

##      ↓ 在游戏状态下                       ↓ 重新修改执行者为退出且在游戏状态的玩家           ↓ 令其执行条件3命令
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isOnline=0,isAlive=0..1}] ~~~ function lib/antileave/condition_3
