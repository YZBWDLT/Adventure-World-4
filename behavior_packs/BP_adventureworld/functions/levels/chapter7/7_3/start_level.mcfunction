# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 730

## --- 封闭入口与出口 ---
fill -192 -18 96 -192 -16 98 cobblestone_wall["wall_block_type":"nether_brick"]
fill -217 -18 98 -217 -16 100 cobblestone_wall["wall_block_type":"nether_brick"]

## --- 设置重生点 ---
tp @e[family=respawner] -203 -12 114

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 4
