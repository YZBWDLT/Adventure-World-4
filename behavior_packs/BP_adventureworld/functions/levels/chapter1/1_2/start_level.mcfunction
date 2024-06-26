# ===== 开始游戏 =====
# 对本关进行一定的初始化

# --- 设置level ---
scoreboard players set @e[name=gameId] data 120

# --- 封闭入口与出口 ---
## 入口&出口
fill -127 5 50 -125 7 50 sandstone["sand_stone_type":"cut"]
fill -126 6 50 -126 6 50 sandstone["sand_stone_type":"heiroglyphs"]

# --- 设置重生点 ---
tp @e[family=respawner] -136 9 58

# --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

# --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 1

# --- 提示药水的供应模式 ---
tellraw @a {"rawtext":[{"translate":"§a药水将会在每关开始前自动供应充足！"}]}
