# ===== 完成关卡 =====
# 3-2

# --- 调用通用函数 ---
execute positioned -172 -20 11 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:iron_boots
clear @a leather_boots
loot replace entity @a[hasitem=[{item=aw:diamond_boots,quantity=0,location=slot.armor.feet}]] slot.armor.feet 0 loot "diamond_boots"
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a3-2已完成！§r\n§f你已获得 §a[治疗药水] §e[钻石靴子] §f！"}]}

# --- 关卡特殊功能 ---
## 重新封闭 3-4
event entity @e[type=aw:door,name="3-4"] aw:close_door
