# ===== 完成关卡 =====
# 1-1

# --- 调用通用函数 ---
function lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -117 2 16

# --- 获得新物品 ---

## 清除玩家的铁靴子以重装备
replaceitem entity @a slot.armor.feet 0 aw:iron_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
function system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a1-1已完成！§r\n§f你已获得 §a[治疗药水] §b[铁靴子] §f！\n§7皮革靴子已自动卸下。"}]}

# --- 重新开放关卡 ---
fill -118 1 14 -116 3 14 air
fill -118 1 32 -116 3 32 air
