# ===== 章节开始通用函数 =====
# 试炼中关卡通用的内容。用于在章节开始（X-0）时调用。
# 调用此方法时：无需修饰。

# --- 关卡参数 ---

## 设置关卡为未完成
scoreboard players set levelCompleted data 0
## 设置为可恢复药水
scoreboard players set allowPotionSupply data 1
## 设置为可恢复箭
scoreboard players set allowArrowSupply data 1
## 启用时间线 | 将原来的时间值归零
function aw/lib/modify_data/states/timeline/dont_keep_value
function aw/lib/modify_data/states/timeline/enable

# --- 提示玩家 ---

## 重置标题时间并播放副标题的关卡号
title @a times 0 100 0
titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-0","with":{"rawtext":[{"score":{"objective":"data","name":"chapter"}}]}}]}
## 音效
function aw/lib/modify_data/states/sound/beacon_power_0_75
## 播放音乐 | 除第 5 章外
execute unless score chapter data matches 5 run function aw/lib/modify_data/play_music

# --- 剧情模式触发对话 ---
execute if score storyMode settings matches 1 run function aw/lib/modify_data/start_dialogue

# --- 清除多余实体 ---
kill @e[family=monster]
kill @e[type=aw:wind_pearl]
event entity @e[type=aw:spawner] aw:remove_immediately
## 重置章节名和波数
kill @e[has_property={aw:marker_type="name"}]
