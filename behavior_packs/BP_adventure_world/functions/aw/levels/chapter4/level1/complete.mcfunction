# ===== 完成关卡 =====
# 4-1

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -168 18 -20

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a4-1已完成！§r\n§f你已获得 §d[重生药水] §e[脊柱之盾] §f！\n§a你刚刚获得了一瓶副药水！它们一般搭配主药水使用，注意合理分配！\n§7提示：手持物品时的§f☹§7代表该效果是短时的"}]}

# --- 重新开放关卡 ---
## 打开 4-1 入口
fill -170 17 -19 -170 19 -21 air
## 打开 4-2 入口
fill -155 7 -3 -157 9 -3 air
