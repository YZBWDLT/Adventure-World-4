# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 210

## --- 封闭入口与出口 ---
fill -74 20 58 -76 18 58 cobblestone_wall["wall_block_type":"diorite"]
fill -69 18 64 -69 20 66 cobblestone_wall["wall_block_type":"diorite"]

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
tp @e[family=respawner] -83 18 64

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 2
