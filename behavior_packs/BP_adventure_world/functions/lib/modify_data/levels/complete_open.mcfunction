# ===== 关卡结束通用函数 =====
# 开幕关卡通用的内容。用于在关卡结束时调用。
# 调用此方法时：需修饰执行位置为下一关的位置（execute positioned (下一关的检查位置) run）

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 1
## 设置标记实体 | 移除上关标记，并新增下关标记
function lib/modify_data/markers/complete
## 结束锁视角对话
function lib/modify_data/stop_dialogue
