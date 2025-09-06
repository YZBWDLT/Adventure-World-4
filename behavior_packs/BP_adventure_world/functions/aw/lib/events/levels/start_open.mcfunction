# ===== 关卡开始通用函数 =====
# 开幕关卡通用的内容。用于在关卡开始时调用。
# 调用此方法时：无需修饰。

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 启用对话
function aw/lib/events/start_dialogue
## 移除引导点
event entity @e[type=aw:destination] aw:remove_immediately
