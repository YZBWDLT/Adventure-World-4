# ===== 章节开始通用函数 =====
# 试炼中关卡通用的内容。用于在章节开始（X-0）时调用。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置标题时间
# · 供应物品
# · 播放音效和音乐
# · 时间线控制

# --- 重置标题时间 ---
title @a times 0 100 0

# --- 供应物品 ---

scoreboard players set allowPotionSupply data 1
scoreboard players set allowArrowSupply data 1
function system/controller/arrows
function system/controller/items
function system/controller/potions

# --- 播放音效和音乐 ---

## 音效 | 信标音效
function lib/modify_data/states/sound/beacon_power_0_75
# 播放音乐 | 除第 5 章外
execute unless score chapter data matches 5 run function lib/modify_data/play_music

# --- 时间线控制 ---
## 不保留时间值地启用时间线
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable
## 如果为纯战斗模式，则只启用时间线而不启用时间线流逝
execute if score storyMode settings matches 0 run function lib/modify_data/states/timeline/disable_time_lapse
## 如果为剧情模式，则启用时间线流逝
execute if score storyMode settings matches 1 run function lib/modify_data/states/timeline/enable_time_lapse
