# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 420

## --- 封闭入口与出口 ---
fill -155 7 -3 -157 9 -3 ice
fill -155 7 16 -157 9 16 ice

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -168 13 10

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level