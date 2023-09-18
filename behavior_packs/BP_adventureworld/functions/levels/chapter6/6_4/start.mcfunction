# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] background 640

## --- 封闭入口与出口 ---
fill -76 -39 20 -74 -37 20 minecraft:deepslate_brick_wall

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -75 -29 35

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=640}] ~~~ execute @a[scores={isAlive=1}] -75 -37 35 function system/summon/blaze_king

## 初始化岩浆刷新时间
scoreboard players random @e[name=randomTick] time 20 40
## 初始化随机传送位置与时间
scoreboard players set @e[name=randomLocation] background 0
## 初始化随机怪物刷新时间
scoreboard players random @e[name=monsterRefreshLeft] time 15 30

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## 标题
title @a title §c§lBOSS 来 袭
title @a subtitle §c6-4