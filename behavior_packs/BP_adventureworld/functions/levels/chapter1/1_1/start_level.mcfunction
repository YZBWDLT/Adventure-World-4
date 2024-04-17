# ===== 开始游戏 =====
# 对本关进行一定的初始化

# --- 设置level ---
scoreboard players set @e[name=gameId] data 110

# --- 封闭入口与出口 ---
## 入口
fill -118 1 14 -116 3 14 sandstone["sand_stone_type":"cut"]
fill -117 2 14 -117 2 14 sandstone["sand_stone_type":"heiroglyphs"]
## 出口
fill -118 1 32 -116 3 32 sandstone["sand_stone_type":"cut"]
fill -117 2 32 -117 2 32 sandstone["sand_stone_type":"heiroglyphs"]

# --- 设置重生点 ---
tp @e[family=respawner] -117 9 22

# --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

# --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 1
