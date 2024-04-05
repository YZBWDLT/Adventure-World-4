# ===== 旷野之剑拔剑动画时间线 =====

# === 准备阶段 ===
# --- [60]将玩家传送到剑之神殿 ---
execute @e[name=timeline,scores={time=60}] ~~~ tp @a -79 -39 105 facing -87 -37 105

# --- [120]播放标题和音效 ---
execute @e[name=timeline,scores={time=120}] ~~~ title @a title §f§l剑 之 神 殿
execute @e[name=timeline,scores={time=120}] ~~~ title @a subtitle §k7§r-§k0
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 0.75 1

# --- [180]移除玩家的失明效果 ---
execute @e[name=timeline,scores={time=180}] ~~~ effect @a clear

# === 剑拔出 ===
# --- [380]“炸开”天花板 ---
execute @e[name=timeline,scores={time=380}] ~~~ particle aw:explosion -87 0 105
execute @e[name=timeline,scores={time=380}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={time=380}] ~~~ structure load 7_0_boomed -91 -1 99

# --- [440]剑开始拔出 | [445~470]粒子效果&音效 ---
execute @e[name=timeline,scores={time=440}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_2
execute @e[name=timeline,scores={time=445}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.25
execute @e[name=timeline,scores={time=445}] ~~~ particle aw:wild_sword1 -87 -39 105
execute @e[name=timeline,scores={time=445}] ~~~ particle aw:wild_sword2 -87 -39 105
execute @e[name=timeline,scores={time=445}] ~~~ particle aw:wild_sword3 -87 -39 105
execute @e[name=timeline,scores={time=445}] ~~~ particle aw:wild_sword4 -87 -35 105
execute @e[name=timeline,scores={time=450}] ~~~ particle aw:wild_sword4 -87 -30 105
execute @e[name=timeline,scores={time=455}] ~~~ particle aw:wild_sword4 -87 -25 105
execute @e[name=timeline,scores={time=460}] ~~~ particle aw:wild_sword4 -87 -20 105
execute @e[name=timeline,scores={time=465}] ~~~ particle aw:wild_sword4 -87 -15 105
execute @e[name=timeline,scores={time=470}] ~~~ particle aw:wild_sword4 -87 -10 105

# --- [760-8*20=600] 播放剑拔出的音乐 ---
execute @e[name=timeline,scores={time=600}] ~~~ execute @a ~~~ playsound aw.sword_temple_drawing_sword @s ~~~ 0.5 1

# --- [760]剑瞬间拔出 ---
execute @e[name=timeline,scores={time=760}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_3

# --- [835]横挥剑 ---
execute @e[name=timeline,scores={time=835}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_4

# --- [875]竖挥剑 ---
execute @e[name=timeline,scores={time=875}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_5

# --- [1040~1045]剑化为光并给予玩家旷野之剑 ---
## [1040]播放粒子和音效
execute @e[name=timeline,scores={time=1040}] ~~~ execute @a ~~~ playsound aw.sword_turn_to_light @s ~~~
execute @e[name=timeline,scores={time=1040}] ~~~ particle aw:wild_sword_disappear -87 -37 105
## [1040~1045]清除剑实体
execute @e[name=timeline,scores={time=1040}] ~~~ execute @e[type=aw:wild_sword] ~~~ tp @s ~~-64~
execute @e[name=timeline,scores={time=1045}] ~~~ kill @e[type=aw:wild_sword]
execute @e[name=timeline,scores={time=1045}] ~~~ clear @a aw:steel_sword
execute @e[name=timeline,scores={time=1045}] ~~~ clear @a aw:wild_sword
execute @e[name=timeline,scores={time=1045}] ~~~ give @a aw:wild_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# === 传送玩家，启动7-1启动程序 ===
# --- [1100~1300]对话内容 ---
execute @e[name=timeline,scores={time=1300}] ~~~ effect @a blindness 30 0 true

# --- [1450]传送玩家到小黑屋 ---
execute @e[name=timeline,scores={time=1450}] ~~~ tp @a -87 -40 85

# --- [1600]传送玩家到7-1 ---
execute @e[name=timeline,scores={time=1600}] ~~~ function levels/chapter7/7_1/before_gaming/start
