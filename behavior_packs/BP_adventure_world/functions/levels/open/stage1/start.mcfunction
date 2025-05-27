# ===== 开始关卡 =====
# 0-1 | 醒来

# --- 变量设置 ---

## 设置关卡 ID
scoreboard players set level data 1
## 调用通用函数
function lib/modify_data/levels/start_open
## 标记实体位置操作 | 创建本关标记作为本关重生点
execute positioned -27 6 -48 run function lib/modify_data/markers/init

# --- 传送玩家并模拟醒来的效果 ---
tp @a -26 6 -50 facing -27 6 -51
camera @a fade time 0 1 5 color 0 0 0

# --- 生成 NPC ---
event entity @e[type=aw:npc] "aw:remove_immediately"
summon aw:npc -43 1 -34 0 0 "aw:is_author=false,aw:npc_type=0" "韩林清"
summon aw:npc -6 1 -5 0 0 "aw:is_author=false,aw:npc_type=1" "陈琦"
summon aw:npc -38 1 -3 0 0 "aw:is_author=false,aw:npc_type=2" "赵向前"
summon aw:npc -2 1 18 0 0 "aw:is_author=false,aw:npc_type=3" "李晴"
summon aw:npc 33 1 -23 0 0 "aw:is_author=false,aw:npc_type=4" "米云溪"
summon aw:npc 0 2 -29 0 0 "aw:is_author=false,aw:npc_type=5" "李南"
summon aw:npc -21 3 42 0 0 "aw:is_author=false,aw:npc_type=6" "张宇"
summon aw:npc -25 1 -34 0 0 "aw:is_author=false,aw:npc_type=7" "田英"

# --- 封锁商店 ---
fill -21 0 37 -23 0 37 border_block

# --- 播放音乐 ---
function lib/modify_data/play_music
