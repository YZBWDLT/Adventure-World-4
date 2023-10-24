# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 110

## --- 封闭入口与出口 ---
fill -118 1 14 -116 3 14 minecraft:cobblestone_wall["wall_block_type":"sandstone"]
fill -118 1 32 -116 3 32 minecraft:cobblestone_wall["wall_block_type":"sandstone"]

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -117 9 22

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 1
