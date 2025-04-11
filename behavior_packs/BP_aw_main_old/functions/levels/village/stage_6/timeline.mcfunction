# ===== 时间线 =====

# --- 在剧情中 ---
# 在对话进行到第380刻的时候，变换玩家和NPC的视角
# 玩家的视角需要在1秒（20刻）内变换完成，此时facingPosition移动5格，即每刻移动0.25格
execute @e[name=timeline,scores={time=380..400}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~~~-0.25
execute @e[name=timeline,scores={time=380}] ~~~ event entity @e[name="田英"] "aw:see_player=true"
execute @e[name=timeline,scores={time=380}] ~~~ event entity @e[name="米云溪"] "aw:see_player=true"

# 在对话进行到560刻的时候，将玩家短暂传送到小黑屋2秒，暂时解除视角锁定状态
# 2秒后传送回来，并锁定视角
# 此时令米云溪和田英传送并禁止看向玩家
execute @e[name=timeline,scores={time=560}] ~~~ scoreboard players set @e[name=dialogue] active 1
execute @e[name=timeline,scores={time=560}] ~~~ function lib/black_screen/default

execute @e[name=timeline,scores={time=561}] ~~~ tp @e[name="米云溪"] -15 1.5 105 facing -16 1 103
execute @e[name=timeline,scores={time=561}] ~~~ tp @e[name="田英"] -17 1 109 facing -16 1 103
execute @e[name=timeline,scores={time=561}] ~~~ event entity @e[name="田英"] "aw:see_player=false"
execute @e[name=timeline,scores={time=561}] ~~~ event entity @e[name="米云溪"] "aw:see_player=false"

execute @e[name=timeline,scores={time=562}] ~~~ tp @e[name=playerPosition] -13 1 112
execute @e[name=timeline,scores={time=562}] ~~~ tp @e[name=facingPosition] @e[name="米云溪"]

execute @e[name=timeline,scores={time=600}] ~~~ scoreboard players set @e[name=dialogue] active 2

# 在对话进行到1060刻的时候，允许NPC面向玩家
execute @e[name=timeline,scores={time=1060}] ~~~ event entity @e[name="田英"] "aw:see_player=true"
execute @e[name=timeline,scores={time=1060}] ~~~ event entity @e[name="米云溪"] "aw:see_player=true"

# 在对话进行到1460刻的时候，变换玩家的视角
# 向-x变换2格，-y变换0.5格，+z变换4格，1秒（20刻）内完成，即每刻~-0.1~-0.025~0.2
execute @e[name=timeline,scores={time=1460..1480}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~-0.1~-0.025~0.2

# 在对话进行到第1540刻的时候，给予玩家传声石结晶
execute @e[name=timeline,scores={time=1540}] ~~~ give @a aw:acoustic_stone_crystal 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# 对话进行到1940刻的时候，将时间线模式改为仅测试 | 不利用已有方法是因为其会将值也顶掉
execute @e[name=timeline,scores={time=1940}] ~~~ scoreboard players set @e[name=timeline] active 2
execute @e[name=timeline,scores={time=1940}] ~~~ scoreboard players set @e[name=timeline] time 2000

# --- 剧情结束后的玩家入水检测 ---
# 当玩家入水3秒后，触发剧情
execute @e[name=timeline,scores={time=2000..2059}] ~~~ execute @a ~~~ detect ~~1~ water -1 scoreboard players add @e[name=timeline] time 1

# 触发剧情，并更改时间线状态
execute @e[name=timeline,scores={time=2060}] ~~~ function lib/states/dialogue/enable
execute @e[name=timeline,scores={time=2060}] ~~~ scoreboard players set @e[name=dialogue] time 2000
execute @e[name=timeline,scores={time=2060}] ~~~ function lib/states/timeline/enable_without_flowing

# --- 进入下一阶段的检测 ---
# 当玩家进入神殿后进入下一阶段
execute @a[x=-18,y=-3,z=99,dx=5,dy=1,dz=3] ~~~ function levels/village/stage_7/start