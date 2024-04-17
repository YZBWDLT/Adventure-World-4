# ===== 对话控制器 =====
# 该控制器主要控制地图的对话部分。一般和时间线同时搭配使用。
# 要控制底层的命令部分，请参见【时间线控制器】。

# --- 添加时间 ---
# 当active.dialogue = 1..2时执行，其余值会导致dialogue停止流逝
scoreboard players add @e[name=dialogue,scores={active=1..2}] time 1

# --- 当固定视角开启后，锁定玩家的视角 ---
execute @e[name=dialogue,scores={active=2}] ~~~ execute @e[name=playerPosition] ~~~ tp @a ~~~ facing @e[name=facingPosition,c=1]

# --- 当固定视角开启且人数超过2人后，施加隐身效果 ---
execute @e[name=dialogue,scores={active=2}] ~~~ execute @e[name=tick,scores={time=15}] ~~~ function lib/get_data/player_amount
execute @e[name=dialogue,scores={active=2}] ~~~ execute @e[name=tick,scores={time=15}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ effect @a invisibility 30 0 true

# --- 各关卡的对话函数 ---
execute @e[name=gameId,scores={data=2}] ~~~ function levels/open/story_mode/dialogue
execute @e[name=gameId,scores={data=3}] ~~~ function levels/village/stage_1/dialogue
execute @e[name=gameId,scores={data=4}] ~~~ function levels/village/stage_2/dialogue
execute @e[name=gameId,scores={data=5}] ~~~ function levels/village/stage_3/dialogue
execute @e[name=gameId,scores={data=6}] ~~~ function levels/village/stage_4/dialogue
execute @e[name=gameId,scores={data=7}] ~~~ function levels/village/stage_5/dialogue
execute @e[name=gameId,scores={data=8}] ~~~ function levels/village/stage_6/dialogue
execute @e[name=gameId,scores={data=9}] ~~~ function levels/village/stage_7/dialogue

execute @e[name=gameId,scores={data=99}] ~~~ function levels/open/combat_mode/dialogue

execute @e[name=gameId,scores={data=101}] ~~~ function levels/chapter1/1_0/dialogue
execute @e[name=gameId,scores={data=111}] ~~~ function levels/chapter1/1_1/dialogue
execute @e[name=gameId,scores={data=121}] ~~~ function levels/chapter1/1_2/dialogue
execute @e[name=gameId,scores={data=131}] ~~~ function levels/chapter1/1_3/dialogue

execute @e[name=gameId,scores={data=201}] ~~~ function levels/chapter2/2_0/dialogue
execute @e[name=gameId,scores={data=211}] ~~~ function levels/chapter2/2_1/dialogue
execute @e[name=gameId,scores={data=221}] ~~~ function levels/chapter2/2_2/dialogue
execute @e[name=gameId,scores={data=231}] ~~~ function levels/chapter2/2_3/dialogue

execute @e[name=gameId,scores={data=301}] ~~~ function levels/chapter3/3_0/dialogue
execute @e[name=gameId,scores={data=311}] ~~~ function levels/chapter3/3_1/dialogue
execute @e[name=gameId,scores={data=321}] ~~~ function levels/chapter3/3_2/dialogue
execute @e[name=gameId,scores={data=331}] ~~~ function levels/chapter3/3_3/dialogue
execute @e[name=gameId,scores={data=341}] ~~~ function levels/chapter3/3_4/dialogue

execute @e[name=gameId,scores={data=401}] ~~~ function levels/chapter4/4_0/dialogue
execute @e[name=gameId,scores={data=411}] ~~~ function levels/chapter4/4_1/dialogue
execute @e[name=gameId,scores={data=421}] ~~~ function levels/chapter4/4_2/dialogue
execute @e[name=gameId,scores={data=431}] ~~~ function levels/chapter4/4_3/dialogue
execute @e[name=gameId,scores={data=441}] ~~~ function levels/chapter4/4_4/dialogue

execute @e[name=gameId,scores={data=501}] ~~~ function levels/chapter5/dialogue

execute @e[name=gameId,scores={data=601}] ~~~ function levels/chapter6/6_0/dialogue
execute @e[name=gameId,scores={data=611}] ~~~ function levels/chapter6/6_1/dialogue
execute @e[name=gameId,scores={data=621}] ~~~ function levels/chapter6/6_2/dialogue
execute @e[name=gameId,scores={data=631}] ~~~ function levels/chapter6/6_3/dialogue
execute @e[name=gameId,scores={data=641}] ~~~ function levels/chapter6/6_4/after_gaming/dialogue

execute @e[name=gameId,scores={data=701}] ~~~ execute @e[name=storyMode,scores={data=0}] ~~~ function levels/chapter7/7_0/combat_mode/dialogue
execute @e[name=gameId,scores={data=701}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ function levels/chapter7/7_0/story_mode/dialogue
execute @e[name=gameId,scores={data=709}] ~~~ function levels/chapter7/7_1/before_gaming/dialogue
execute @e[name=gameId,scores={data=711}] ~~~ function levels/chapter7/7_1/dialogue
execute @e[name=gameId,scores={data=721}] ~~~ function levels/chapter7/7_2/dialogue
execute @e[name=gameId,scores={data=731}] ~~~ function levels/chapter7/7_3/dialogue
execute @e[name=gameId,scores={data=740..741}] ~~~ function levels/chapter7/7_4/dialogue

execute @e[name=gameId,scores={data=1001}] ~~~ function levels/end/stage_1/dialogue
execute @e[name=gameId,scores={data=1002}] ~~~ function levels/end/stage_2/dialogue
execute @e[name=gameId,scores={data=1003}] ~~~ function levels/end/stage_3/dialogue
execute @e[name=gameId,scores={data=1004}] ~~~ function levels/end/stage_4/dialogue
