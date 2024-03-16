# ===== 防退出机制 =====
# 本系统仅对退出重进的玩家有效。

# --- 获取退出重进的玩家 ---
function lib/get_data/is_online_before

# --- 令退出重进的玩家执行以下的命令 ---
execute @a[scores={isOnline=0}] ~~~ function lib/antileave/main

# --- 将所有玩家设置为在线模式 ---
function lib/get_data/is_online_after
