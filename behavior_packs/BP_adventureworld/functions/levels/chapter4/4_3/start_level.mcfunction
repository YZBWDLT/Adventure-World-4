# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 430

## --- 封闭入口与出口 ---
fill -155 -12 16 -157 -10 16 ice
fill -156 -18 5 -158 -18 7 ice[] replace water[]

## --- 设置重生点 ---
tp @e[family=respawner] -151 -7 -5

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 4
