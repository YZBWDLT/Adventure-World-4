# ===== 完成关卡 =====
# 6-4

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -75 -38 22

# --- 获得新物品 ---
clear @a aw:diamond_helmet
clear @a aw:diamond_boots
clear @a leather_boots
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a6-4已完成！"}]}

# --- 重新开放关卡 ---
fill -76 -39 20 -74 -37 20 structure_void

# --- 关卡特殊功能 ---
## 清除残余岩浆
structure load aw:6_4_no_lava -89 -40 21
## 播放音乐
function aw/lib/modify_data/play_music
## 启用时间流逝
function aw/lib/modify_data/states/timeline/enable_time_lapse
