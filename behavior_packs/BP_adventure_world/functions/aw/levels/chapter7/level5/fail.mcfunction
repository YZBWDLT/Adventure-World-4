# ===== 未完成关卡 =====
# 7-5

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/fail_level

# --- 重新开放关卡 ---
# （本关无需重新开放关卡，因为入口并未封闭）

# --- 关卡特殊功能 ---
## 移除已经安放的掩体
fill -238 -45 31 -212 -45 57 air destroy
## 播放音乐
function aw/lib/modify_data/play_music
