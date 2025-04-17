# ===== 关卡开始通用函数 =====
# 全体关卡通用的内容。用于在关卡开始时调用。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · ——

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 0
## 当前波数
scoreboard players set wave data 1
## 设置标记实体
function lib/modify_data/markers/start

# --- 将所有玩家传送到率先进入的玩家的位置 ---

# --- 生成怪物生成器并启用怪物延迟生成 ---
