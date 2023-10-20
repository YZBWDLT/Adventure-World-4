# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 640

## --- 封闭入口与出口 ---
fill -76 -39 20 -74 -37 20 deepslate_brick_wall

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -75 -29 35

## --- 时间数据初始化 ---
scoreboard players random @e[name=lavaWarningLeft] time 20 40

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level
function methods/timeline/enable