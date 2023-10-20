# ===== 开始游戏 =====
# 对本关进行一定的初始化

## 防止误判断为第一波已完成
scoreboard players set @e[name=monsterAmount] background 14

## --- 设置level ---
scoreboard players set @e[name=level] background 710

fill -150 -18 102 -150 -16 100 nether_brick_fence

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -112 13 -103

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level
