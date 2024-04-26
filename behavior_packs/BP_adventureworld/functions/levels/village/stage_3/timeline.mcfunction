# ===== 时间线 =====

# --- 对话运行时 ---

# 对话在620刻时，面向墙上的花纹
execute @e[name=timeline,scores={active=1,time=620}] ~~~ tp @e[name=playerPosition] 36 2 -30
execute @e[name=timeline,scores={active=1,time=620}] ~~~ tp @e[name=facingPosition] 31 2 -33

# 对话在780刻时，恢复原来的状态
execute @e[name=timeline,scores={active=1,time=780}] ~~~ tp @e[name=playerPosition] 36 1 -22
execute @e[name=timeline,scores={active=1,time=780}] ~~~ tp @e[name=facingPosition] @e[type=aw:npc,name="米云溪"]

# 田英行走动画
execute @e[name=timeline,scores={active=1,time=1040..1140}] ~~~ execute @e[name="田英"] ~~~ tp @s ~~~-0.1
execute @e[name=timeline,scores={active=1,time=1140}] ~~~ event entity @e[name="田英"] should_see_player

# 时间线结束
execute @e[name=timeline,scores={active=1,time=1141}] ~~~ function lib/states/timeline/enable_without_flowing

# --- 对话结束后 ---

# 当玩家到达特定位置后进入下一阶段
execute @e[name="张宇"] ~~~ execute @a[r=5,c=1] ~~~ function levels/village/stage_4/start
