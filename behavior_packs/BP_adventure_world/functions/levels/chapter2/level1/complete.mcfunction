# ===== 完成关卡 =====

# --- 调用通用函数 ---
execute positioned -72 1 69 run function lib/modify_data/levels/complete_level

# --- 关卡特殊功能 ---

## 提示玩家获得新物品
function system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a2-1已完成！§r\n§f你已获得 §b[弓] §f！"}]}

## 开放关卡
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air
