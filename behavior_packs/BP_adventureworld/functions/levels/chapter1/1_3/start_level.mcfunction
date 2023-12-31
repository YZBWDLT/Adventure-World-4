# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 130

## --- 封闭入口与出口 ---
fill -139 11 34 -139 13 32 cobblestone_wall["wall_block_type":"red_sandstone"]
fill -121 18 25 -121 20 27 cobblestone_wall["wall_block_type":"red_sandstone"]

## --- 设置重生点 ---
tp @e[family=respawner] -141 18 26

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 2
