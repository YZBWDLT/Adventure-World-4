# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 440

## --- 封闭入口与出口 ---
fill -143 -31 7 -143 -29 5 minecraft:ice
fill -117 -31 7 -117 -29 5 minecraft:ice

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -145 -23 6

## 初始化剩余时间数值
scoreboard players set @e[name=timeLeft] time 180
scoreboard players random @e[name=monsterRefreshLeft] time 3 10

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 标题 ---
function methods/title
titleraw @a subtitle {"rawtext":[{"translate":"§c4-4 | 随机位置生成随机怪物"}]}

## --- 生成守卫者 ---
summon guardian -138 -30 -2
summon guardian -122 -30 -2
summon guardian -122 -30 14
summon guardian -138 -30 14