# ===== 防退出机制 =====

# 考虑到玩家可能会中途退出，回到游戏后可能会出现以下几种异常情况：
# 1. 玩家以“正在游戏”状态回归，然而此时处于未在游戏中的状态
# 2. 玩家以“未在游戏”状态回归，然而此时应当处于游戏中的状态
# 3. 玩家以“正在游戏”状态回归，且此时处于游戏中的状态，但是玩家的关卡位置数据落后于关卡进度
# 4. 玩家以“未在游戏”状态回归，且此时未处于游戏中的状态【此时不认为是异常情况，无非是玩家在不同的位置罢了】

#<!> 可能会出现当玩家贴门边的时候，出现误判行为

# --- 获取玩家位置 ---
execute @a ~~~ function methods/get_entity_location

# --- 获取玩家的章节关卡数和现在的关卡进度数据 ---
# 关卡进度：章节、关卡数、状态（0正在游戏，1未在游戏） -> temp.level、temp2.level、temp3.level
# 玩家位置：章节、关卡数、状态（01正在游戏，2未在游戏） -> temp2.@s、temp3.@s、isAlive.@s
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s background
execute @e[name=level] ~~~ function methods/3_digit_seperator
execute @a ~~~ scoreboard players operation @s temp = @s inLevelArea
execute @a ~~~ function methods/3_digit_seperator

# --- 对第一种情况的修正 ---
# 为防止玩家在死亡状态下退出重进从而导致被困在重生点里，先将死亡的玩家传送到最近的玩家附近，并进行提示
execute @e[name=level,scores={temp3=1}] ~~~ tp @a[scores={isAlive=0}] @a[scores={isAlive=2},c=1]
execute @e[name=level,scores={temp3=1}] ~~~ tellraw @a[scores={isAlive=0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您传送到附近的玩家位置。"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ tellraw @a[scores={isAlive=0}] {"rawtext":[{"translate":"§c错误 ANTILEAVE_SYSTEM_TYPE_1"}]}

# 当未在游戏状态时，强制令所有玩家的存活数据（isAlive.@s）均为2
execute @e[name=level,scores={temp3=1}] ~~~ scoreboard players set @a[scores={isAlive=!2}] isAlive 2

# --- 对第二种情况的修正 ---
# 当检测到有玩家处于“未在游戏”状态时（isAlive.@s=2），将该玩家传送到观战区域，进行提示并修正游戏状态
execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=2}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本波结束后您将被释放。"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=2}] {"rawtext":[{"translate":"§c错误 ANTILEAVE_SYSTEM_TYPE_2"}]}
execute @e[name=level,scores={temp3=0}] ~~~ tp @a[scores={isAlive=2}] @e[family=respawner,c=1]
execute @e[name=level,scores={temp3=0}] ~~~ scoreboard players set @a[scores={isAlive=2}] isAlive 0

# --- 对第三种情况的修正 ---
# 检测玩家的位置数据和关卡数据是否匹配（即temp2.@s=0, temp3.@s=0）
# 【这里修改了temp2.@s和temp3.@s的数据，如需再次使用这两个值，请将命令写到这个模块的前面】
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isAlive=0..1}] ~~~ scoreboard players operation @s temp2 -= @e[name=level] temp
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isAlive=0..1}] ~~~ scoreboard players operation @s temp3 -= @e[name=level] temp2
# 将出现不匹配的玩家传送到最近的玩家附近
# 检测关卡状态为“游玩状态”（temp3.level=0），然后
execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=0..1,temp2=!0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本波结束后您将被释放。"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=0..1,temp2=!0}] {"rawtext":[{"translate":"§c错误 ANTILEAVE_SYSTEM_TYPE_3"}]}
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isAlive=0..1,temp2=!0}] ~~~ tp @s @e[family=respawner,c=1]

execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=0..1,temp3=!0}] {"rawtext":[{"translate":"§e检测到您重新进入游戏，当前处于游戏状态，您将暂时观战，本波结束后您将被释放。"}]}
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @e[name=level,scores={temp3=0}] ~~~ tellraw @a[scores={isAlive=0..1,temp3=!0}] {"rawtext":[{"translate":"§c错误 ANTILEAVE_SYSTEM_TYPE_4"}]}
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={isAlive=0..1,temp3=!0}] ~~~ tp @s @e[family=respawner,c=1]
