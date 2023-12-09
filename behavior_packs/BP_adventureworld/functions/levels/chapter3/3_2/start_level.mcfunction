# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 320

## --- 封闭入口与出口 ---
fill -171 -21 13 -173 -19 13 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## --- 加载1阶段结构 ---
structure load 3_2_phase1 -192 -22 -1 0_degrees none false true

## --- 设置重生点 ---
tp @e[family=respawner] -182 -15 21

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] background 3
