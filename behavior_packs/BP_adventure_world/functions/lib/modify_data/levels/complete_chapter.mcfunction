# ===== 关卡结束通用函数 =====
# 试炼中关卡通用的内容。用于在章节开始关卡（X-0）结束时调用。
# 调用此方法时：无需修饰。

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 1
## 结束锁视角对话
function lib/modify_data/stop_dialogue
