# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 630

## --- 封闭入口与出口 ---
fill -76 -37 -17 -74 -35 -17 deepslate_bricks
fill -74 -39 8 -76 -37 8 deepslate_bricks

## --- 设置重生点 ---
tp @e[family=respawner] -82 -34 -16

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 4
