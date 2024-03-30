# ===== 关卡完成延迟操作函数 =====
# 启用60刻的关卡完成延迟

scoreboard players set @e[name=levelCompleteDelay] active 60
scoreboard players set @e[name=levelCompleteDelay] time 60

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"§7本关怪物全部清除后将在3秒后完成关卡。"}]}
