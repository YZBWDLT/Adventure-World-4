# ===== 第二部分 =====

# --- 更改关卡ID ---
scoreboard players set @e[name=gameId] data 1002

# --- 锁定玩家视角对话 ---
tp @e[name="米云溪"] -25 1 -34
tp @e[name="田英"] -23 1 -35

tp @e[name=playerPosition] -26 1 -37
tp @e[name=facingPosition] @e[type=aw:npc,name="米云溪"]
function lib/states/dialogue/enable_lock_camera
function lib/states/timeline/enable

# --- 生成NPC ---
summon aw:npc -21 3 42 aw:npc_zhangyu "张宇"
summon aw:npc 0 2 -29 aw:npc_linan "李南"
summon aw:npc -43 1 -34 aw:npc_hanlinqing "韩林清"
summon aw:npc -6 1 -5 aw:npc_chenqi "陈琦"
summon aw:npc -38 1 -3 aw:npc_zhaoxiangqian "赵向前"
summon aw:npc -2 1 18 aw:npc_liqing "李晴"

kill @e[type=aw:wild_sword]

# --- 重置重生点 ---
tp @e[family=respawner] -27 6 -48
