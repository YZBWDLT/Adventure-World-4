# ===== 完成关卡 =====
# 3-4

# --- 调用通用函数 ---
execute positioned -170 -14 23 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:normal_sword
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a3-4已完成！§r\n§f你已获得 §d[钢剑] §f！"}]}

# --- 生成引导点 ---
summon aw:destination -173 18 -8

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
