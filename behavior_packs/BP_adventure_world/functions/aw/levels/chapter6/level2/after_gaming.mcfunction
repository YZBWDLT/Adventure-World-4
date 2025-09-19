# ===== 关卡游戏后时间线 =====
# 6-2

# --- 检查玩家进入下一个关卡 ---
execute positioned -75 -36 -15 positioned ~-2.4~-1~-2.4 if score pausing data matches 0 as @a[scores={deathState=0,spectator=!1}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-76,y=-37,z=-17,dx=2,dy=2] at @s run function aw/levels/chapter6/level3/start
execute positioned -75 -36 -15 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7千万要小心女巫和蜘蛛啊！§8(1/4)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7不怕，我现在的装备强得可怕，即使中毒也无大碍。§8(2/4)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7林乐......你一直都是这样......§8(3/4)"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7欸欸欸......我们可不是什么都做不到的啊！§8(4/4)"}]}
execute if score timeline time matches 320.. run function aw/lib/modify_data/timeline/disable_time_lapse
