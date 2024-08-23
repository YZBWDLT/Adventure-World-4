# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 330

## --- 封闭入口与出口 ---
fill -162 -21 26 -164 -19 26 prismarine

## --- 设置重生点 ---
tp @e[family=respawner] -163 -16 29

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 3
