# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 730

## --- 封闭入口与出口 ---
fill -192 -18 96 -192 -16 98 nether_brick
fill -217 -18 98 -217 -16 100 nether_brick

## --- 设置重生点 ---
tp @e[family=respawner] -203 -12 114

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 4
