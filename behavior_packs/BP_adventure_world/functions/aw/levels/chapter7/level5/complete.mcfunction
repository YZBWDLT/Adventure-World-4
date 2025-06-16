# ===== 完成关卡 =====
# 7-5

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -225 -47 44

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§c最终关卡已完成！跳入最中间的洞，结束试炼！§r"}]}

# --- 重新开放关卡 ---
# （本关不存在出入口）

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/modify_data/play_music
