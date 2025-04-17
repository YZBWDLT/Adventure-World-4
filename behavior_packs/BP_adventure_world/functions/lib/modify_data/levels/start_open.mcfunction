# ===== 关卡开始通用函数 =====
# 开幕关卡通用的内容。用于在关卡开始时调用。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · ——

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 设置标记实体 | thisLevel -> prevLevel, nextLevel -> thisLevel
function lib/modify_data/markers/start
## 启用流逝的时间线，以启用对话
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable_time_lapse
## 禁止玩家视角和位置移动
inputpermission set @a camera disabled
inputpermission set @a movement disabled
## 如果玩家人数大于等于 2 人，则施加隐身
execute if score playerAmount data matches 2.. run effect @a invisibility 3600 0 true
## 禁止与 NPC 交互
scoreboard players set allowNpcInteraction data 0
