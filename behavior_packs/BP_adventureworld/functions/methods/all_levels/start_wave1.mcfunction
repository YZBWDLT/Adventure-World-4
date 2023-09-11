# ===== 所有关卡通用的开始关卡函数 =====
# 第一波

## --- 设置波数为1 ---
scoreboard players set @e[name=wave] background 1

## --- 设置上一波已通过的标记为0 ---
scoreboard players set @e[name=lastWaveCompleted] background 0

## --- 设置怪物延迟生成的时间 ---
scoreboard players set @e[name=monsterSummonDelay] time 40

## --- 重要物品检测器 ---
## 用于给玩家补充缺少的重要物资
function methods/important_items_tester

## --- 开启关卡检测器 ---
## (functions/levels/x_x/level_tester)并记录游玩状态
scoreboard players set @e[name=timeline] active 2
tag @a add playing
scoreboard players set @a isAlive 1

## --- 改玩家为冒险模式 ---
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a[tag=playing]

## --- 清除药效 ---
effect @a clear

## --- 传送玩家到已经进入房间的玩家处 ---
tp @a[tag=!intoLevel] @a[tag=intoLevel,c=1]

## --- 为玩家补充箭 ---
give @a arrow 64

## --- 为玩家补充药水 ---
## --- 还是还是仍然是那个很烦人的/loot不能同时给予的问题，要用到遍历器，下面的这个标签是开遍历器用的 ---
tag @a remove potionTraversing
scoreboard players set @e[name=potionTraversing] active 1

## --- 显示标题准备工作 ---
function methods/title
titleraw @a subtitle {"rawtext":[{"translate":"第 §a%%s§f 波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}

## --- 失败多次后，给予药效 ---
execute @e[name=failedTimes,scores={stats=3..}] ~~~ effect @a strength 1000 1 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a health_boost 1000 4 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a resistance 1000 0 true

## --- 移除残留绳枪 ---
kill @e[type=aw:hookshot]