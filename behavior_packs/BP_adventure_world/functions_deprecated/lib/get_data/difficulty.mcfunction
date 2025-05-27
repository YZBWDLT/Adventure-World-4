# ===== 获取游戏难度 =====
# 游戏难度是用于控制怪物生成模式的系统。
# 游戏难度由两个值决定：游戏难度基值（data.difficulty）和游戏难度加和（data.difficultyAdder）
# 游戏难度基值由玩家人数自动决定，人数和游戏难度基值的关系如下：
# 人数          1   2~3 4~6 7+
# 游戏难度基值  1   2   3   4
# 游戏难度加和则是用于手动调控游戏难度的。可以利用此值对游戏难度进行数值上的调控。计算方法为直接相加。

# 该函数将在关卡召唤怪物之前执行。若某关卡采用了区别于其他关卡的生成方式，应当单独调用本函数动态获取难度。

# --- 获取玩家人数 ---
function lib/get_data/player_amount

# --- 按照玩家人数设置游戏难度基值 ---
execute @e[name=alivePlayerAmount,scores={data=1}] ~~~ scoreboard players set @e[name=difficulty] data 1
execute @e[name=alivePlayerAmount,scores={data=2..3}] ~~~ scoreboard players set @e[name=difficulty] data 2
execute @e[name=alivePlayerAmount,scores={data=4..6}] ~~~ scoreboard players set @e[name=difficulty] data 3
execute @e[name=alivePlayerAmount,scores={data=7..}] ~~~ scoreboard players set @e[name=difficulty] data 4

# --- 将难度加和计算进去 ---
scoreboard players operation @e[name=difficulty] data += @e[name=difficultyAdder] data

# --- 排除异常数值 ---
# 确保data.difficulty在1~4范围内
scoreboard players set @e[name=difficulty,scores={data=..0}] data 1
scoreboard players set @e[name=difficulty,scores={data=5..}] data 4
