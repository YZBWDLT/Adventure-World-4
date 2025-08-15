# ===== 转换到新场景 =====
# 在黑屏后，转换所有玩家到剑之试炼入口

# --- 重载 NPC ---
event entity @e[type=aw:npc] aw:remove_immediately
summon aw:npc -17 1 90 facing -16 1 96 aw:npc_miyunxi "米云溪"
summon aw:npc -23 1 93 facing -19 2 96 aw:npc_tianying "田英"
event entity @e[type=aw:npc] aw:ignore_player

# --- 传送玩家 ---
tp @a -12 1 88 facing -17 1 95

# --- 播放音乐 ---
function aw/lib/events/play_music

# --- 恢复掉落物移除机制 ---
scoreboard players set allowRemoveItemEntity data 1
