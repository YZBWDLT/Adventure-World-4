# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 720

## --- 封闭入口与出口 ---
fill -159 -18 109 -159 -16 111 nether_brick_fence
fill -184 -18 98 -184 -16 96 nether_brick_fence

## --- 设置重生点 ---
tp @e[family=respawner] -178 -8 104

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 3
