# ===== 完成关卡 =====
# 0-3 | 到达时间神殿

# 设置重生点
spawnpoint @a 36 1 -22

# 调用通用函数
function aw/lib/events/levels/complete_open

# 启用时间线流逝
function aw/lib/modify_data/timeline/enable_time_lapse

# 开放商店
fill -21 0 37 -23 0 37 air

# 生成引导点
summon aw:destination -21.0 4 34
