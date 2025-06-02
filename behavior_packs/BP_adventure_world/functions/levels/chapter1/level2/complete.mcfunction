# ===== 完成关卡 =====

# --- 调用通用函数 ---
execute positioned -137 12 33 run function lib/modify_data/levels/complete_level

# --- 关卡特殊功能 ---

## 提示玩家获得新物品
function system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a1-2已完成！§r\n§f你已获得 §a[治疗药水] §b[御风珠] §f！"}]}

## 开放关卡
fill -127 5 50 -125 7 50 air
