# ===== 转换到新场景 =====
# 在黑屏后，转换所有玩家到剑之试炼背侧

# --- 重载 NPC ---
event entity @e[type=aw:npc] aw:remove_immediately
summon aw:npc -15 1.5 105 facing -16 1 103 aw:npc_miyunxi "米云溪"
summon aw:npc -17 1 109 facing -16 1 103 aw:npc_tianying "田英"
event entity @e[type=aw:npc] aw:ignore_player

# --- 传送玩家 ---
tp @a -13 1 112 facing @e[name="米云溪",c=1]
