# ===== 关卡开始函数 =====
# 该函数用于关卡开始之时。
# 函数逻辑：在关卡开始时先行执行。

# --- 设置当前波数为1 ---
scoreboard players set @e[name=wave] data 1

# --- 传送所有玩家并更改玩家状态 ---
# 在【开始游戏检测器】中，“超前”进入房间的玩家的isAlive.@s=3，此时其他玩家的该变量应当均为2
tp @a[scores={isAlive=!3}] @a[scores={isAlive=3},c=1]
scoreboard players set @a isAlive 1

# --- 启用怪物延迟生成并生成怪物生成器 ---
function lib/monster_summon_delay/enable_40ticks
function levels/monster_settings_functions

# --- 启用时间线 ---
function lib/timeline/enable_without_flowing

## --- 为玩家补充物资 ---
function lib/supplier/arrow
function lib/supplier/potion
function lib/supplier/items

# --- 更改玩家游戏模式 ---
# 开发者模式下不更新游戏模式
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a

## --- 清除药效 ---
effect @a clear

## --- 失败多次后，给予药效 ---
execute @e[name=failedTimes,scores={data=3..}] ~~~ effect @a strength 1000 1 true
execute @e[name=failedTimes,scores={data=5..}] ~~~ effect @a health_boost 1000 4 true
execute @e[name=failedTimes,scores={data=5..}] ~~~ effect @a resistance 1000 0 true

## --- 清除多余实体 ---
kill @e[type=aw:hookshot]
kill @e[family=monster]
