# ===== 结束屋 =====

# --- 清除玩家的物品 ---
clear @a
effect @a clear

# --- 设置ID ---
scoreboard players set @e[name=gameId] data 1001

# --- 生成一个已经拔出的旷野之剑 ---
kill @e[type=aw:wild_sword]
summon aw:wild_sword -15.0 1 85 "aw:show"

# --- 锁定玩家视角对话 ---
tp @e[name=playerPosition] -15.0 1 88
tp @e[name=facingPosition] @e[type=aw:wild_sword,c=1]
function lib/states/dialogue/enable_lock_camera
function lib/states/timeline/enable

# --- 生成NPC ---
kill @e[type=aw:npc]
summon aw:npc -14 1 83 aw:npc_tianying "田英"
summon aw:npc -17 1 83 aw:npc_miyunxi "米云溪"

kill @e[family=text_display]

# --- 重置重生点 ---
tp @e[family=respawner] -15.0 1 88

# --- 播放音乐 ---
function lib/music_player
