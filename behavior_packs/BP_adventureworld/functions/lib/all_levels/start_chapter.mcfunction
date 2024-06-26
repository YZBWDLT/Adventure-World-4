# ===== 章节开始函数 =====
# 该函数用于章节函数启动之时。
# 函数逻辑：在X-0的启动函数中先行执行

# --- 设定玩家的isAlive.@s为2 ---
# 因为【关卡开始控制器】在调用此函数时会将进入的玩家的isAlive.@s设定为1，但进入章节关卡区域并不代表是“游戏区域”，因此重新改回2
scoreboard players set @a isAlive 2

# --- 初始化标题时间和音效 ---
title @a times 0 100 0
scoreboard players set @e[name=soundPlayer] active 14

# --- 为玩家补充必要物资 ---
execute @a ~~~ function lib/supplier/arrow
execute @a ~~~ function lib/supplier/items
execute @a ~~~ function lib/supplier/potion

# --- 当玩家以剧情模式进入后，触发剧情 ---
execute @e[name=storyMode,scores={data=0}] ~~~ function lib/states/dialogue/disable
execute @e[name=storyMode,scores={data=0}] ~~~ function lib/states/timeline/disable

execute @e[name=storyMode,scores={data=1}] ~~~ function lib/states/dialogue/enable_lock_camera
execute @e[name=storyMode,scores={data=1}] ~~~ function lib/states/timeline/enable

# --- 当玩家进入新的章节（除第五章之外），播放音乐 ---
execute @e[name=gameId,scores={data=!501}] ~~~ function lib/music_player
