# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 340

## --- 封闭入口与出口 ---
fill -168 -15 22 -168 -13 24 prismarine
fill -174 17 18 -172 19 18 prismarine

## --- 设置重生点 ---
tp @e[family=respawner] -172 -1 30

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 加载结构 ---
function levels/chapter3/3_4/water_clear
structure load 3_4_layer1_nowater -178 -16 18

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 4
