# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 220

## --- 封闭入口与出口 ---
fill -70 0 68 -70 3 70 cobblestone_wall["wall_block_type":"diorite"]
fill -104 -17 69 -104 -15 67 cobblestone_wall["wall_block_type":"diorite"]

## --- 设置重生点 ---
tp @e[family=respawner] -83 -12 81

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 3
