# ===== 完成关卡 =====
# 6-2

# --- 调用通用函数 ---
execute positioned -80 -18 -48 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a6-2已完成！§r"}]}

# --- 生成引导点 ---
summon aw:destination -75 -36 -15

# --- 关卡特殊功能 ---
## 开启 6-3 的入口
fill -74 -32 -23 -77 -32 -22 air replace obsidian
## 初始化 6-3 的岩浆
structure load aw:6_3_lava_2 -82 -40 -7
