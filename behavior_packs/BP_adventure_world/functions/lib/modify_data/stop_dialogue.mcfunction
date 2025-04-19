# ===== 停止对话 =====
# 停止锁定视角的对话时执行。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用玩家权限
# · 移除隐身
# · 启用不保留值的时间线，时间不再流逝
# · 启用与 NPC 的交互
# · 提示玩家可以移动
# · 恢复玩家的相机

# --- 禁用玩家权限 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 存在多个玩家时，施加隐身 ---
effect @a invisibility 0 1 true

# --- 启用不保留值的时间线，时间不再流逝 ---
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable
function lib/modify_data/states/timeline/disable_time_lapse

# --- 启用与 NPC 的交互 ---
scoreboard players set allowNpcInteraction data 1

# --- 提示玩家可以移动 --
tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}

# --- 恢复玩家的相机 ---
camera @a clear
