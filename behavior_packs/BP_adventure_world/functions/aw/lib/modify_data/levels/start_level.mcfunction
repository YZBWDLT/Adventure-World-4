# ===== 关卡开始通用函数 =====
# 试炼中关卡通用的内容。用于在关卡开始时调用。
# 调用此方法时：需将执行者和执行位置修饰为进入的玩家及其位置（execute as ... at @s）。

# --- 关卡参数 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 当前波数
scoreboard players set wave data 1
## 设置为可恢复药水
scoreboard players set allowPotionSupply data 1
## 设置为可恢复箭
scoreboard players set allowArrowSupply data 0
## 时间线
function aw/lib/modify_data/states/timeline/dont_keep_value
function aw/lib/modify_data/states/timeline/enable

# --- 提醒玩家开启关卡 ---
function aw/lib/modify_data/title
titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-%%s","with":{"rawtext":[{"score":{"objective":"data","name":"chapter"}},{"score":{"objective":"data","name":"level"}}]}}]}

# --- 传送玩家 ---

## 标记率先进入的玩家
tag @s add firstEntered
## 将所有玩家传送到率先进入的玩家的位置
tp @a[tag=!firstEntered] ~~~
tag @a remove firstEntered

# --- 更改玩家模式 ---
# 备注：开发者模式不更新
execute if score developerMode settings matches 0 run gamemode adventure @a

# --- 玩家回血与药效提供 ---

## 将玩家回满血
effect @a clear
effect @a instant_health 1 20 true
## 死亡多次后，提供额外buff
execute if score failedCount.thisLevel data matches 3.. run effect @a strength 3600 1 true
execute if score failedCount.thisLevel data matches 5.. run effect @a health_boost 3600 4 true
execute if score failedCount.thisLevel data matches 5.. run effect @a resistance 3600 0 true

# --- 若进入时正处于对话状态，则停止对话 ---
execute unless score timeLapse data matches 0 run tellraw @a {"rawtext":[{"translate":"§7与试炼外的对话已被中断"}]}
execute unless score timeLapse data matches 0 run function aw/lib/modify_data/states/timeline/disable_time_lapse

# --- 清除多余实体 ---
kill @e[family=monster]
kill @e[type=aw:wind_pearl]
