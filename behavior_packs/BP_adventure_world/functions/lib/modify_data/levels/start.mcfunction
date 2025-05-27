# ===== 关卡开始通用函数 =====
# 试炼中关卡通用的内容。用于在关卡开始时调用。

# 调用此方法时：
# · 执行者为首个进入的玩家位置
# · 执行位置为首个进入的玩家位置
# 输出结果：
# · 变量设置
# · 传送玩家

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 当前波数
scoreboard players set wave data 1
## 设置标记实体 | 将本关标记改为上关标记，下关标记改为本关标记
function lib/modify_data/markers/start
## 时间线
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable

# --- 传送玩家 ---

## 将所有玩家传送到率先进入的玩家的位置
execute as @a unless entity @s run tp @a ~~~

# --- 生成怪物 ---

## 启用怪物延迟生成
