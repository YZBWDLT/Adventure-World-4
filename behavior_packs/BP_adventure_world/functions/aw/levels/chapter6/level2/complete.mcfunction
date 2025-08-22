# ===== 完成关卡 =====
# 6-2

# --- 调用通用函数 ---
execute positioned -80 -18 -48 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a6-2已完成！§r"}]}

# --- 重新开放关卡 ---
fill -81 -19 -50 -79 -17 -50 air
fill -72 -19 -30 -70 -17 -30 air
## 开启 6-3 的入口
fill -74 -32 -23 -77 -32 -22 air replace obsidian
