# ===== 完成关卡 =====
# 2-3

# --- 调用通用函数 ---
execute positioned -143 -20 61 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
clear @a leather_chestplate
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a2-3已完成！§r\n§f你已获得 §b[生长药水] [亢奋药水] [神龟药水] [铁胸甲] §f！"}]}

# --- 重新开放关卡 ---
fill -141 -21 60 -141 -19 62 air
fill -167 -21 60 -167 -19 62 air

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/modify_data/play_music
