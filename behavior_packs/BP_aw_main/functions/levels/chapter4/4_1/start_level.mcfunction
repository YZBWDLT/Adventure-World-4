# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 410

## --- 封闭入口与出口 ---
fill -170 17 -19 -170 19 -21 ice

## --- 加载结构 ---
structure load aw:4_1_phase1 -168 16 -23

## --- 设置重生点 ---
tp @e[family=respawner] -156 17 -23

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 3
