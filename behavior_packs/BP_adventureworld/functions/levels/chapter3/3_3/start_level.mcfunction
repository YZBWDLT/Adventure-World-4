# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 330

## --- 封闭入口与出口 ---
fill -162 -21 26 -164 -19 26 cobblestone_wall["wall_block_type":"prismarine"]

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -163 -16 29

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level