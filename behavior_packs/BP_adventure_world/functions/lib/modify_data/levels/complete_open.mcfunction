# ===== 关卡结束通用函数 =====
# 开幕关卡通用的内容。用于在关卡结束时调用。

# 调用此方法时：
# · 执行者任意
# · 执行位置为下一关的位置
# 输出结果：
# · ——

# --- 变量设置 ---

## 当前关卡完成状态
scoreboard players set levelCompleted data 1
## 设置标记实体 | 移除prevLevel, 新增nextLevel
function lib/modify_data/markers/complete
## 启用流逝的时间线
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/disable_time_lapse
## 允许玩家视角和位置移动
inputpermission set @a camera enabled
inputpermission set @a movement enabled
## 解除玩家的隐身
effect @a invisibility 0 1 true
## 提示玩家可以移动
tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
## 允许与 NPC 交互
scoreboard players set allowNpcInteraction data 1
