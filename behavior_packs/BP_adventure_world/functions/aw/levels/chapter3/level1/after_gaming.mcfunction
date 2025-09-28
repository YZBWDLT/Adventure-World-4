# ===== 关卡游戏后时间线 =====
# 3-1

# --- 检查玩家进入下一个关卡 ---
execute positioned -172 -20 11 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[scores={deathState=0,spectator=!1}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-173,y=-21,z=13,dx=2,dy=2] at @s run function aw/levels/chapter3/level2/start
execute positioned -172 -20 11 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 检查玩家进入水迷宫出口 ---
# 在剧情模式下（data.storyMode == 1），当检查到未曾启用过动画（active.timeline == 1），且玩家到达出口后，则开始进行动画
execute if score storyMode settings matches 1 if entity @a[x=-185,y=-21,z=27,dx=4,dy=4,dz=4] if score timeline active matches 1 run function aw/levels/chapter3/level1/events/camera_animation

# --- 剧情 ---
# 此处设定 active.timeline 会调用不同对话。
# 当 active.timeline == !2 时，调用传声石结晶的对话
# 当 active.timeline == 2 时，调用额外视角动画的对话
execute if score timeline active matches 2 run function aw/levels/chapter3/level1/timelines/camera_animation

execute if score timeline active matches !2 if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哎呦我的天，究竟是谁设计的啊？这回去的水道真是又臭又长的啊。(///￣皿￣)○～§8(1/2)"}]}
execute if score timeline active matches !2 if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嘻嘻，你猜猜看~？§8(2/2)"}]}
execute if score timeline active matches !2 if score timeline time matches 160.. run function aw/lib/modify_data/timeline/disable_time_lapse
