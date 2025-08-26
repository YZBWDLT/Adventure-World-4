# ===== 开始关卡 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# 设置关卡 ID
scoreboard players set level data 4

# 调用通用函数
function aw/lib/events/levels/start_open

# 传送玩家
tp @a -21 3 39 facing -21 2 42

# 播放音乐
function aw/lib/events/play_music

# 移除悬浮文本
event entity @e[type=aw:text_display] aw:remove_immediately

# 阻止系统移除掉落物
scoreboard players set allowRemoveItemEntity data 0
