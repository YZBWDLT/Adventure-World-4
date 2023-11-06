# ===== 所有关卡通用的开始关卡函数 =====

## --- 设置波数为0 ---
scoreboard players set @e[name=wave] background 0

## --- 设置上一波已通过的标记为0 ---
scoreboard players set @e[name=lastWaveCompleted] background 0

## --- 开启关卡检测器 ---
scoreboard players set @e[name=timeline] active 2

## --- 更改全体玩家的存活状态 ---
scoreboard players set @a isAlive 1

## --- 改玩家为冒险模式 ---
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a[scores={isAlive=0..1}]

## --- 清除药效 ---
effect @a clear

## --- 传送玩家到已经进入房间的玩家处 ---
tp @a[tag=!intoLevel] @a[tag=intoLevel,c=1]

## --- 为玩家补充箭 ---
function methods/supplier/arrow

## --- 为玩家补充药水和残留的重要装备 ---
function methods/supplier/potion
function methods/important_items_tester

## --- 失败多次后，给予药效 ---
execute @e[name=failedTimes,scores={stats=3..}] ~~~ effect @a strength 1000 1 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a health_boost 1000 4 true
execute @e[name=failedTimes,scores={stats=5..}] ~~~ effect @a resistance 1000 0 true

## --- 移除残留绳枪 ---
kill @e[type=aw:hookshot]

## --- 清除原始怪物 ---
## 防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]
