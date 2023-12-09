# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 620

## --- 封闭入口与出口 ---
fill -81 -19 -48 -79 -17 -48 stained_glass["color":"purple"]
fill -72 -19 -32 -70 -17 -32 stained_glass["color":"purple"]

## --- 设置重生点 ---
tp @e[family=respawner] -78 -11 -30

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 3
