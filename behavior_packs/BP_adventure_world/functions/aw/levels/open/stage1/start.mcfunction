# ===== 开始关卡 =====
# 0-1 | 醒来

# 设置关卡 ID
scoreboard players set level data 1

# 调用通用函数
function aw/lib/events/levels/start_open

# 传送玩家
tp @a -26 6 -50 facing -27 6 -51
camera @a fade time 0 1 5 color 0 0 0

# 在第一关设置一个初始重生点
spawnpoint @a -27 6 -48

# 生成 NPC
event entity @e[type=aw:npc] aw:remove_immediately
summon aw:npc -43 1 -34 facing @p aw:npc_hanlinqing "韩林清"
summon aw:npc -6 1 -5 facing @p aw:npc_chenqi "陈琦"
summon aw:npc -38 1 -3 facing @p aw:npc_zhaoxiangqian "赵向前"
summon aw:npc -2 1 18 facing @p aw:npc_liqing "李晴"
summon aw:npc 33 1 -23 facing @p aw:npc_miyunxi "米云溪"
summon aw:npc 0 2 -29 facing @p aw:npc_linan "李南"
summon aw:npc -21 3 42 facing @p aw:npc_zhangyu "张宇"
summon aw:npc -25 1 -34 facing @p aw:npc_tianying "田英"

# 封锁商店
fill -21 0 37 -23 0 37 border_block

# 播放音乐
function aw/lib/events/play_music
