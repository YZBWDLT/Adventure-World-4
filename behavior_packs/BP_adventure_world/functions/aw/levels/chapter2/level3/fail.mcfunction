# ===== 未完成关卡 =====
# 2-3

# --- 调用通用函数 ---
execute positioned -72 1 69 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -143 -20 61

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 移除临时变量
scoreboard players reset temp.playerHurt data
