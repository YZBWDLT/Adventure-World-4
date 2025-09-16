# ===== 关卡游戏后时间线 =====
# 3-0 | 湖泊神殿

# --- 检查玩家进入下一个关卡 ---
execute positioned -188 -20 29 positioned ~-2.4~-1~-2.4 as @a[tag=!spectator,scores={deathState=0}] if entity @s[dx=3.8,dy=3,dz=3.8] unless entity @s[x=-186,y=-21,z=28,dz=2,dy=2] at @s run function aw/levels/chapter3/level1/start
# 因3-1要依靠相关检测，所以仅本关不清除御风珠
# execute positioned -188 -20 29 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7据说这个地方比较容易迷路......你多留个心眼啊！§8(1/4)"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7你怎么知道我已经迷路了......§8(2/4)"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哦对了，这里还说【海之仙灵将赋予勇者以劈水之力】，也许§d存在能让你在水下游得更自在的力量§7哦。§8(3/4)"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好awa，我会多加利用的！§8(4/4)"}]}
execute if score timeline time matches 320.. run function aw/lib/modify_data/timeline/disable_time_lapse
