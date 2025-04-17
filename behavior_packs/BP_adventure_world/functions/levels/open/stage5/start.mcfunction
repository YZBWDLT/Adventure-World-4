# ===== 开始关卡 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# 设置关卡 ID
scoreboard players set level data 4
# 调用通用函数
function lib/modify_data/levels/start_open
# 传送玩家
tp @a -21 3 39 facing @e[name="张宇",c=1]
# 播放音乐
function lib/modify_data/play_music
