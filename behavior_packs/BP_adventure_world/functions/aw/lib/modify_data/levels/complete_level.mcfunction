# ===== 关卡结束通用函数 =====
# 试炼中关卡通用的内容。用于在关卡结束时调用。
# 调用此方法时：无需修饰。

# --- 关卡参数 ---

## 设置关卡为已完成
scoreboard players set levelCompleted data 1
## 设置为可恢复药水
scoreboard players set allowPotionSupply data 1
## 设置为可恢复箭
scoreboard players set allowArrowSupply data 1
## 启用时间线 | 将原来的时间值归零
function aw/lib/modify_data/states/timeline/dont_keep_value
function aw/lib/modify_data/states/timeline/enable
## 失败次数归零
scoreboard players set failedCount.thisLevel data 0

# --- 提示玩家 ---

## 标题
function aw/lib/modify_data/title
titleraw @a subtitle {"rawtext":[{"translate":"§a关卡已完成！"}]}
## 音效
function aw/lib/modify_data/states/sound/random_levelup_2

# --- 玩家复活与回血 ---

## 复活已死亡玩家
execute as @a[tag=spectator] run function aw/lib/spawnpoint/teleport_this_level
gamemode adventure @a[tag=spectator]
tag @a remove spectator
## 将玩家回满血
effect @a clear
effect @a instant_health 1 20 true

# --- 清除多余实体 ---
kill @e[family=monster]
kill @e[type=aw:wind_pearl]
event entity @e[type=aw:spawner] aw:remove_immediately
