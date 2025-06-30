# ===== 停止对话 =====
# 停止锁定视角的对话时执行。保留时间线。
# 调用此方法时：无需修饰。

# --- 启用玩家权限 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled

# --- 存在多个玩家时，施加隐身 ---
effect @a invisibility 0 1 true

# --- 启用与 NPC 的交互 ---
scoreboard players set allowNpcInteraction data 1

# --- 恢复玩家的相机 ---
camera @a clear

# --- 禁用 HUD ---
scoreboard players set allowHud data 1
