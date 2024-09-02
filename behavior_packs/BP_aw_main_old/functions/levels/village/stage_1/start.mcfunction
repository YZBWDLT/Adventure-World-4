# ===== 进入本状态时 =====

scoreboard players set @e[name=gameId] data 3

tp @a -26 6 -50 facing -27 6 -51
effect @a blindness 5 0 true

function lib/states/dialogue/enable
function lib/states/timeline/enable

# --- 生成NPC ---
kill @e[type=aw:npc]
summon aw:npc -25 1 -34 "as_tianying" "田英"
summon aw:npc 33 1 -23 "as_miyunxi" "米云溪"
summon aw:npc -21 3 42 "as_zhangyu" "张宇"
summon aw:npc 0 2 -29 "as_linan" "李南"
summon aw:npc -43 1 -34 "as_npc_1" "韩林清"
summon aw:npc -6 1 -5 "as_npc_2" "陈琦"
summon aw:npc -38 1 -3 "as_npc_3" "赵向前"
summon aw:npc -2 1 18 "as_npc_4" "李晴"

# --- 封锁商店 ---
fill -21 0 37 -23 0 37 border_block

# --- 重置重生点 ---
tp @e[family=respawner] -27 6 -48

# --- 播放音乐 ---
function lib/music_player
