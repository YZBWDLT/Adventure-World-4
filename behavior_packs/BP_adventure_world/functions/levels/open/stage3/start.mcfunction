# ===== 开始关卡 =====
# 0-3 | 到达时间神殿

# 设置关卡 ID
scoreboard players set level data 3
# 调用通用函数
function lib/modify_data/levels/start_open
# 传送玩家
tp @a 36 1 -22 facing @e[name="米云溪",c=1]
# 播放音乐
function lib/modify_data/play_music
# 移除悬浮文本
kill @e[type=aw:text_display]
# 将田英传送过来以作准备
event entity @e[name="田英"] "aw:remove_immediately"
summon aw:npc 33 1 -11 facing @e[name="米云溪"] "aw:is_author=false,aw:npc_type=7" "田英"
event entity @e[name="田英"] "aw:see_player=false"
