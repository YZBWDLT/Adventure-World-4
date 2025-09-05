# ===== 完成关卡 =====
# 7-5

# --- 调用通用函数 ---
execute positioned -225 -47 44 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§c最终关卡已完成！跳入最中间的洞，结束试炼！§r"}]}

# --- 重新开放关卡 ---
# （本关不存在出入口）

# --- 生成引导点 ---
summon aw:destination -225 -47 44

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 启用时间流逝
function aw/lib/modify_data/timeline/enable_time_lapse
## 移除临时变量
scoreboard players reset temp.stage data
scoreboard players reset temp.skillCd time
scoreboard players reset temp.skillLength data
scoreboard players reset temp.skillType data
scoreboard players reset temp.spawnMonsterGroup data
scoreboard players reset temp.bossHealthOneSecond data
scoreboard objectives remove temp.respawnTime
