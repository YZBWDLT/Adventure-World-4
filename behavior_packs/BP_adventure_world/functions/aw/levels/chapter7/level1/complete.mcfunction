# ===== 完成关卡 =====
# 7-1

# --- 调用通用函数 ---
execute positioned -119 -16 103 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-1已完成！§r"}]}

# --- 生成引导点 ---
summon aw:destination -161 -17 110

# --- 关卡特殊功能 ---
## 重新允许玩家此时使用退出试炼
scoreboard players set allowQuit data 1
