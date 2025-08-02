# ===== 完成关卡 =====
# 3-2

# --- 调用通用函数 ---
execute positioned -172 -20 11 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
clear @a aw:iron_boots
clear @a leather_boots
loot replace entity @a[hasitem=[{item=aw:diamond_boots,quantity=0,location=slot.armor.feet}]] slot.armor.feet 0 loot "diamond_boots"
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a3-2已完成！§r\n§f你已获得 §a[治疗药水] §e[钻石靴子] §f！"}]}

# --- 重新开放关卡 ---
## 打开 3-2 入口
fill -171 -21 13 -173 -19 13 structure_void
## 打开 3-3 入口
fill -162 -21 26 -164 -19 26 structure_void
