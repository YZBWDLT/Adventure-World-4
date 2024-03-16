# ===== 对话控制器 =====
# 该控制器主要控制地图的对话部分。一般和时间线同时搭配使用。
# 要控制底层的命令部分，请参见【时间线控制器】。

# --- 添加时间 ---
# 当active.dialogue = 1..2时执行，其余值会导致dialogue停止流逝
scoreboard players add @e[name=dialogue,scores={active=1..2}] time 1

# --- 当固定视角开启后，锁定玩家的视角 ---
execute @e[name=dialogue,scores={active=2}] ~~~ execute @e[name=playerPosition] ~~~ tp @a ~~~ facing @e[name=facingPosition,c=1]

# --- 当对话启用且人数超过2人后，施加隐身效果 ---
execute @e[name=timeline,scores={time=15}] ~~~ function lib/get_data/player_amount
execute @e[name=timeline,scores={time=15}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ effect @a invisibility 30 0 true

# --- 各关卡的对话函数 ---
execute @e[name=level,scores={data=2}] ~~~ function levels/open/story_mode/dialogue
execute @e[name=level,scores={data=3}] ~~~ function levels/village/stage_1/dialogue
execute @e[name=level,scores={data=4}] ~~~ function levels/village/stage_2/dialogue
execute @e[name=level,scores={data=5}] ~~~ function levels/village/stage_3/dialogue
execute @e[name=level,scores={data=6}] ~~~ function levels/village/stage_4/dialogue
execute @e[name=level,scores={data=7}] ~~~ function levels/village/stage_5/dialogue
execute @e[name=level,scores={data=8}] ~~~ function levels/village/stage_6/dialogue
execute @e[name=level,scores={data=9}] ~~~ function levels/village/stage_7/dialogue

execute @e[name=level,scores={data=99}] ~~~ function levels/open/combat_mode/dialogue
