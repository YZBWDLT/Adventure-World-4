# ===== 关卡结束通用函数 =====
# 试炼中关卡通用的内容。用于在章节开始关卡（X-0）结束时调用。
# 调用此方法时：需修饰执行位置为下关标记位置（execute positioned (下关标记位置)）。

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 1
## 设置标记实体 | 移除上关标记，并新增下关标记
function lib/modify_data/markers/complete
## 结束锁视角对话
execute if score storyMode settings matches 1 run function lib/modify_data/stop_dialogue
