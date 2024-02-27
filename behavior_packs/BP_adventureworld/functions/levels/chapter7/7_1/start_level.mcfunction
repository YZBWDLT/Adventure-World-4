# ===== 开始游戏 =====
# 对本关进行一定的初始化

## 防止误判断为第一波已完成
scoreboard players set @e[name=monsterAmount] data 14

## --- 设置level ---
scoreboard players set @e[name=level] data 710

fill -150 -18 102 -150 -16 100 nether_brick

## --- 设置重生点 ---
tp @e[family=respawner] -112 -13 103

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2

## --- 封闭7-2~7-5的出口 ---
## 7-2
fill -184 -18 98 -184 -16 96 nether_brick
## 7-3
fill -217 -18 98 -217 -16 100 nether_brick
## 7-4
fill -235 -30 97 -233 -30 99 stained_glass["color":"red"]
