# ===== 关卡开始通用函数 =====
# 试炼中关卡通用的内容。用于在关卡开始时调用。
# 调用此方法时：需将执行者和执行位置修饰为进入的玩家及其位置（execute as ... at @s）。

# --- 关卡参数 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 当前波数
scoreboard players set wave data 1
## 时间线
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable

# --- 设置本关标记 ---
function lib/modify_data/markers/start

# --- 传送玩家 ---

## 将所有玩家传送到率先进入的玩家的位置
execute as @a unless entity @s run tp @a ~~~
