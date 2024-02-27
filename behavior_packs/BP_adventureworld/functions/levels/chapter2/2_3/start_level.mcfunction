# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 230

## --- 封闭入口与出口 ---
fill -141 -21 60 -141 -19 62 stone["stone_type":"diorite_smooth"]
fill -167 -21 60 -167 -19 62 stone["stone_type":"diorite_smooth"]

## --- 设置重生点 ---
tp @e[family=respawner] -154 -21 46

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 4
