# ===== 启用对话 =====
# 启用锁定视角的对话时执行。
# 调用此方法时：无需修饰。

# --- 禁用玩家移动与旋转视角的权限 ---
inputpermission set @a camera disabled
inputpermission set @a movement disabled

# --- 存在多个玩家时，施加隐身 ---
# 只保留一个玩家显示
execute if score playerAmount data matches 2.. run effect @a invisibility 3600 0 true
effect @a[c=1] invisibility 0 1 true

# --- 启用不保留值的时间线，并时间流逝 ---
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable_time_lapse

# --- 禁止与 NPC 的交互 ---
scoreboard players set allowNpcInteraction data 0

# --- 禁用 HUD ---
scoreboard players set allowHud data 0
