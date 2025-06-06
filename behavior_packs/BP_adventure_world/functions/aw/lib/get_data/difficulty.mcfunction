# ===== 获取难度 =====
# 用于获取地图难度（settings.difficulty）。
# 调用此方法时：无需修饰。

# 游戏难度由两个值决定：游戏难度（基础值）（settings.difficulty）和额外游戏难度（settings.extraDifficulty）
# 游戏难度由玩家人数自动决定，人数和游戏难度的关系如下：
# 人数          1   2~3 4~6 7+
# 游戏难度       1   2   3   4
# 额外游戏难度则是用于手动调控游戏难度的。可以利用此值对游戏难度进行数值上的调控。计算方法为直接相加。

# --- 按照玩家人数设置游戏难度 ---
execute if score alivePlayerAmount data matches 1 run scoreboard players set difficulty settings 1
execute if score alivePlayerAmount data matches 2..3 run scoreboard players set difficulty settings 2
execute if score alivePlayerAmount data matches 4..6 run scoreboard players set difficulty settings 3
execute if score alivePlayerAmount data matches 7.. run scoreboard players set difficulty settings 4

# --- 将额外游戏难度计算进去 ---
scoreboard players operation difficulty settings += extraDifficulty settings

# --- 排除异常数值 ---
# 确保data.difficulty在1~4范围内
execute if score difficulty settings matches ..0 run scoreboard players set difficulty settings 1
execute if score difficulty settings matches 5.. run scoreboard players set difficulty settings 4
