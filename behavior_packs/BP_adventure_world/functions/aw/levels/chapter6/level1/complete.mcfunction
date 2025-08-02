# ===== 完成关卡 =====
# 6-1

# --- 调用通用函数 ---
execute positioned -76 -30 -48 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a6-1已完成！§r\n§f你已获得 §e[力量弓] §f！\n§7手持弓可获取附魔"}]}

# --- 重新开放关卡 ---
fill -75 -31 -46 -77 -29 -46 air
fill -82 -31 -62 -82 -29 -64 air

# --- 关卡特殊功能 ---
# 关闭摔落伤害
gamerule falldamage false
