# ===== 完成关卡 =====
# 7-4

# --- 调用通用函数 ---
execute positioned -225 -17 99 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-4已完成！§r"}]}

# --- 生成引导点 ---
## 生成到 7-4 的井的位置
summon aw:destination -234 -30 98

# --- 关卡特殊功能 ---
## 启用时间流逝
function aw/lib/modify_data/timeline/enable_time_lapse
## 开放出口
fill -235 -30 97 -233 -30 99 structure_void
