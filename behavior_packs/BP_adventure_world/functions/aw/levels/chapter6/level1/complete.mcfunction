# ===== 完成关卡 =====
# (X)-(Y)

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -76 -30 -48

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a6-1已完成！§r\n§f你已获得 §e[力量弓] §f！\n§7手持弓可获取附魔"}]}

# --- 重新开放关卡 ---
## 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone ["hanging"=false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone ["hanging"=true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone ["hanging"=true,"dripstone_thickness"="merge"]
## 出口
fill -82 -31 -64 -82 -29 -62 pointed_dripstone ["hanging"=true]
fill -82 -31 -63 -82 -30 -63 pointed_dripstone ["hanging"=false]
fill -82 -31 -64 -82 -31 -64 pointed_dripstone ["hanging"=false,"dripstone_thickness"="merge"]

# --- 关卡特殊功能 ---
# 关闭摔落伤害
gamerule falldamage false
