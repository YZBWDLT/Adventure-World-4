# ===== 时间线 =====

# --- 对话运行时 ---

# 对话在760刻时，面向墙上的花纹
execute @e[name=timeline,scores={active=1,time=760}] ~~~ tp @e[name=playerPosition] 36 2 -30
execute @e[name=timeline,scores={active=1,time=760}] ~~~ tp @e[name=facingPosition] 31 2 -33

# 对话在960刻时，恢复原来的状态
execute @e[name=timeline,scores={active=1,time=960}] ~~~ tp @e[name=playerPosition] 36 1 -22
execute @e[name=timeline,scores={active=1,time=960}] ~~~ tp @e[name=facingPosition] @e[type=aw:npc,name="米云溪"]

# 将田英传送过来并进行准备
execute @e[name=timeline,scores={active=1,time=1299}] ~~~ event entity @e[name="田英"] should_not_see_player
execute @e[name=timeline,scores={active=1,time=1299}] ~~~ tp @e[name="田英"] 33 1 -11 facing @e[name=facingPosition]

# 田英行走动画
execute @e[name=timeline,scores={active=1,time=1300..1400}] ~~~ execute @e[name="田英"] ~~~ tp @s ~~~-0.1
execute @e[name=timeline,scores={active=1,time=1401}] ~~~ event entity @e[name="田英"] should_see_player

# 剧情结束
execute @e[name=timeline,scores={active=1,time=1760}] ~~~ function lib/states/timeline/enable_without_flowing

# --- 对话结束后 ---

# 当玩家到达特定位置后进入下一阶段
execute @e[name="张宇"] ~~~ execute @a[r=5,c=1] ~~~ function levels/village/stage_4/start