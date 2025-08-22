# ===== 完成关卡 =====
# 4-4

# --- 调用通用函数 ---
execute positioned -141 -30 6 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:iron_chestplate
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a4-4已完成！§r\n§f你已获得 §e[钻石胸甲] §f！"}]}

# --- 重新开放关卡 ---
fill -143 -31 7 -143 -29 5 air
fill -117 -31 7 -117 -29 5 air

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 移除临时变量设置
scoreboard players reset temp.remainingTime time
scoreboard players reset temp.nextMonster time
scoreboard players reset temp.nextMonsterType data
scoreboard players reset temp.nextMonsterPos data
