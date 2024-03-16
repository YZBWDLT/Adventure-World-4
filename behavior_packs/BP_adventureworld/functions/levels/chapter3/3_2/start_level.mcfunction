# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 320

## --- 封闭入口与出口 ---
fill -171 -21 13 -173 -19 13 prismarine

## --- 设置重生点 ---
tp @e[family=respawner] -182 -15 21

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 3

## --- 清除水并加载1阶段结构 ---
function levels/chapter3/3_2/water_clear
structure load 3_2_phase1 -192 -22 -1 0_degrees none false true
