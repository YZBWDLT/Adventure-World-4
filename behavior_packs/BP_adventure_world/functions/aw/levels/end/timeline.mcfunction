# ===== 结束剧情 时间线 =====

# --- 游戏时时间线 ---

### 10-1 | 林乐回归
execute if score levelCompleted data matches 0 if score level data matches 1 run function aw/levels/end/stage1/gaming
### 10-2 | 进行最终结算
execute if score levelCompleted data matches 0 if score level data matches 2 run function aw/levels/end/stage2/gaming
### 10-3 | 进入试炼门口
execute if score levelCompleted data matches 0 if score level data matches 3 run function aw/levels/end/stage3/gaming
### 10-4 | 开始单关卡试炼
execute if score levelCompleted data matches 0 if score level data matches 4 run function aw/levels/end/stage4/gaming

# --- 游戏后时间线 ---

### 10-1 | 林乐回归
#（此处无需执行命令） execute if score levelCompleted data matches 1 if score level data matches 1 run function aw/levels/end/stage1/after_gaming
### 10-2 | 进行最终结算
#（此处无需执行命令） execute if score levelCompleted data matches 1 if score level data matches 2 run function aw/levels/end/stage2/after_gaming
### 10-3 | 进入试炼门口
execute if score levelCompleted data matches 1 if score level data matches 3 run function aw/levels/end/stage3/after_gaming
### 10-4 | 开始单关卡试炼
#（此处无需执行命令） execute if score levelCompleted data matches 1 if score level data matches 4 run function aw/levels/end/stage4/after_gaming
