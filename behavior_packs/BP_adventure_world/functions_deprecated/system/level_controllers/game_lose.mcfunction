# ===== 关卡失败检测器 =====
# 该检测器将检测关卡失败条件

# --- 检测玩家数目 ---
function lib/get_data/player_amount

# --- 当不存在存活玩家时，且不存在一直未复活的玩家时，触发关卡失败函数 ---
execute @e[name=alivePlayerAmount,scores={data=0}] ~~~ execute @e[name=realDeadPlayersAmount,scores={data=0}] ~~~ function levels/game_lose_functions

# --- 当不存在存活玩家时，且存在一直未复活的玩家时，提醒其他玩家 ---
# 未复活的玩家，应满足time.@s=10
execute @e[name=alivePlayerAmount,scores={data=0}] ~~~ execute @e[name=realDeadPlayersAmount,scores={data=!0}] ~~~ execute @a[scores={time=10..},c=1] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"§c§l警告\n\n§r§e检测到有正处于聊天界面或暂停界\n面的已死亡玩家。\n直到该玩家复活之前，你们都必须\n在观战区等待。\n\n请你及时联系正在挂机的该玩家，\n如若无法联络，请使用命令\n§b/kick <该玩家ID>\n§e将玩家从你的房间移出以继续游戏。"}]}

