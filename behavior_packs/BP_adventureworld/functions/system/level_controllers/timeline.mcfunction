# ===== 时间线控制器 =====
# 该控制器主要控制地图的时间线部分。一般和对话同时搭配使用。
# 要控制播放的对话部分，请参见【对话控制器】。

# --- 添加时间 ---
# 当active.timeline = 1时执行，其余值会导致timeline停止流逝，但是时间线函数正常执行
scoreboard players add @e[name=timeline,scores={active=1}] time 1

# --- 时间线 ---
execute @e[name=level,scores={data=1}] ~~~ function levels/open/before_opening/timeline
execute @e[name=level,scores={data=2}] ~~~ function levels/open/story_mode/timeline
execute @e[name=level,scores={data=3}] ~~~ function levels/village/stage_1/timeline
execute @e[name=level,scores={data=4}] ~~~ function levels/village/stage_2/timeline
execute @e[name=level,scores={data=5}] ~~~ function levels/village/stage_3/timeline
execute @e[name=level,scores={data=6}] ~~~ function levels/village/stage_4/timeline
execute @e[name=level,scores={data=7}] ~~~ function levels/village/stage_5/timeline
execute @e[name=level,scores={data=8}] ~~~ function levels/village/stage_6/timeline
execute @e[name=level,scores={data=9}] ~~~ function levels/village/stage_7/timeline
execute @e[name=level,scores={data=99}] ~~~ function levels/open/combat_mode/timeline

execute @e[name=level,scores={data=101}] ~~~ function levels/chapter1/1_0/timeline
execute @e[name=level,scores={data=201}] ~~~ function levels/chapter2/2_0/timeline
execute @e[name=level,scores={data=301}] ~~~ function levels/chapter3/3_0/timeline
execute @e[name=storyMode,scores={settings=1}] ~~~ execute @e[name=level,scores={data=311}] ~~~ function levels/chapter3/3_1/timeline
execute @e[name=level,scores={data=401}] ~~~ function levels/chapter4/4_0/timeline
execute @e[name=level,scores={data=501}] ~~~ function levels/chapter5/timeline
execute @e[name=level,scores={data=601}] ~~~ function levels/chapter6/6_0/timeline

execute @e[name=level,scores={data=220}] ~~~ function levels/chapter2/2_2/timeline
execute @e[name=level,scores={data=230}] ~~~ function levels/chapter2/2_3/timeline
execute @e[name=level,scores={data=320}] ~~~ function levels/chapter3/3_2/timeline
execute @e[name=level,scores={data=340}] ~~~ function levels/chapter3/3_4/timeline 
execute @e[name=level,scores={data=410}] ~~~ function levels/chapter4/4_1/timeline 
execute @e[name=level,scores={data=440}] ~~~ function levels/chapter4/4_4/timeline 
execute @e[name=level,scores={data=630}] ~~~ function levels/chapter6/6_3/timeline 
execute @e[name=level,scores={data=640}] ~~~ function levels/chapter6/6_4/gaming/timeline 
execute @e[name=level,scores={data=641}] ~~~ function levels/chapter6/6_4/after_gaming/timeline 
execute @e[name=level,scores={data=701}] ~~~ execute @e[name=storyMode,scores={settings=0}] ~~~ function levels/chapter7/7_0/combat_mode/timeline 
execute @e[name=level,scores={data=701}] ~~~ execute @e[name=storyMode,scores={settings=1}] ~~~ function levels/chapter7/7_0/story_mode/timeline 
execute @e[name=level,scores={data=710}] ~~~ function levels/chapter7/7_1/before_gaming/timeline 
execute @e[name=level,scores={data=720}] ~~~ function levels/chapter7/7_2/timeline 
execute @e[name=level,scores={data=740..741}] ~~~ function levels/chapter7/7_4/timeline 
execute @e[name=level,scores={data=750}] ~~~ function levels/chapter7/7_5/timeline 
