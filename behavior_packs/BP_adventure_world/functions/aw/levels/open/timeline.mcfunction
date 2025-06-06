# ===== 开幕&村庄剧情 时间线 =====

# --- 游戏时时间线 ---

## 村庄剧情

### 0-1 | 醒来
execute if score levelCompleted data matches 0 if score level data matches 1 run function aw/levels/open/stage1/gaming
### 0-2 | 与田英初次对话
execute if score levelCompleted data matches 0 if score level data matches 2 run function aw/levels/open/stage2/gaming
### 0-3 | 到达时间神殿
execute if score levelCompleted data matches 0 if score level data matches 3 run function aw/levels/open/stage3/gaming
### 0-4 | 与张宇对话&到达剑之试炼入口
execute if score levelCompleted data matches 0 if score level data matches 4 run function aw/levels/open/stage4/gaming
### 0-5 | 进入剑之试炼神殿（开幕时间线）
execute if score levelCompleted data matches 0 if score level data matches 5 run function aw/levels/open/stage5/gaming

# --- 游戏后时间线 ---

## 开幕
execute if score levelCompleted data matches 1 if score level data matches 0 run function aw/levels/open/before_stage/gaming

### 0-1 | 醒来
execute if score levelCompleted data matches 1 if score level data matches 1 run function aw/levels/open/stage1/after_gaming
### 0-2 | 与田英初次对话
execute if score levelCompleted data matches 1 if score level data matches 2 run function aw/levels/open/stage2/after_gaming
### 0-3 | 到达时间神殿
execute if score levelCompleted data matches 1 if score level data matches 3 run function aw/levels/open/stage3/after_gaming
### 0-4 | 与张宇对话&到达剑之试炼入口
execute if score levelCompleted data matches 1 if score level data matches 4 run function aw/levels/open/stage4/after_gaming
