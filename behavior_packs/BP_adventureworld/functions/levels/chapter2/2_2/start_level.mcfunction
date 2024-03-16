# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 220

## --- 封闭入口与出口 ---
fill -70 0 68 -70 3 70 stone["stone_type":"diorite_smooth"]
fill -104 -17 69 -104 -15 67 stone["stone_type":"diorite_smooth"]

## --- 设置重生点 ---
tp @e[family=respawner] -83 -12 81

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 3
