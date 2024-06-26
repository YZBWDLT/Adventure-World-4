# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 720

## --- 封闭入口与出口 ---
fill -159 -18 109 -159 -16 111 nether_brick
fill -184 -18 98 -184 -16 96 nether_brick

## --- 设置重生点 ---
tp @e[family=respawner] -178 -8 104

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 3

# --- 重新开启怪物检测 ---
# 因为关卡有岩浆怪，因此启用延迟
function lib/states/level_complete_delay/enable_60ticks
