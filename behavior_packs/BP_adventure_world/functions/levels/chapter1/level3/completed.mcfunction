# ===== 完成关卡 =====

# --- 调用通用函数 ---
execute positioned -79 19 26 run function lib/modify_data/levels/complete_level

# --- 关卡特殊功能 ---

## 提示玩家获得新物品
clear @a leather_helmet
function system/controller/items
tellraw @a {"rawtext":[{"text":"§l§l§a1-3已完成！§r\n§f你已获得 §a[治疗药水] §b[铁头盔] §f！"}]}

## 开放关卡
fill -139 11 34 -139 13 32 air
fill -121 18 25 -121 20 27 air
