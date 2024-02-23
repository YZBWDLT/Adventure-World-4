# ===== 所有关卡通用奖励功能 =====

## --- 将死亡的玩家放出来 ---
execute @a[scores={isAlive=0}] ~~~ tp @s @a[scores={isAlive=1},c=1]

## --- 设置所有玩家的存活状态为2 ---
## isAlive.@s=2代表该玩家存活且未在游玩状态
scoreboard players set @a isAlive 2

## --- 标题与音效 ---
function lib/title
title @a subtitle §a关卡已完成！
scoreboard players set @e[name=soundPlayer] active 10

## --- 本关的失败次数归零 ---
scoreboard players set @e[name=failedTimes] stats 0

## --- 为玩家补充残留的重要装备 ---
function lib/supplier/items
function lib/supplier/potion
function lib/supplier/arrow

## --- 清除所有的状态效果并回满血 ---
effect @a clear
effect @a instant_health 1 20 true

## --- 清除所有的怪物和怪物生成器 ---
kill @e[family=summoner]
kill @e[family=monster]