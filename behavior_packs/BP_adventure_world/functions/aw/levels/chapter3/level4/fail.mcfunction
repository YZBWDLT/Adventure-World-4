# ===== 未完成关卡 =====
# 3-4

# --- 调用通用函数 ---
execute positioned -163 -20 28 run function aw/lib/modify_data/levels/fail_level

# --- 关卡特殊功能 ---
## 重新加载结构并清除水
structure load aw:3_4_layer1_nowater -178 -16 18
function aw/levels/chapter3/level4/events/clear_water
## 播放音乐
function aw/lib/modify_data/play_music

# --- 重新开放关卡 ---
fill -168 -15 22 -168 -13 24 structure_void
