# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 430

## --- 封闭入口与出口 ---
fill -155 -12 16 -157 -10 16 ice
fill -156 -18 5 -158 -18 7 ice[] replace structure_void[]

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
tp @e[family=respawner] -151 -7 -5

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 4
