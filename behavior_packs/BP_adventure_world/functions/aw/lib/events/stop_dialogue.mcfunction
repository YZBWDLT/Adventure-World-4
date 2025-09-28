# ===== 停止对话 =====
# 停止锁定视角的对话时执行。
# 调用此方法时：无需修饰。

# --- 启用玩家权限 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 为玩家移除药效 ---

## 隐身
effect @a invisibility 0 1 true
## 抗性提升
effect @a resistance 0 10 true

# --- 启用不保留值的时间线，时间不再流逝 ---
function aw/lib/modify_data/timeline/dont_keep_value
function aw/lib/modify_data/timeline/enable
function aw/lib/modify_data/timeline/disable_time_lapse

# --- 启用与 NPC 的交互 ---
scoreboard players set allowNpcInteraction data 1

# --- 恢复玩家的相机 ---
camera @a clear

# --- 禁用 HUD ---
hud @a reset all
