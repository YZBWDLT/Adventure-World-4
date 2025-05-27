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
## 设置标记实体 | 将本关标记改为上关标记，下关标记改为本关标记
function lib/modify_data/markers/start
## 启用对话
function lib/modify_data/start_dialogue
