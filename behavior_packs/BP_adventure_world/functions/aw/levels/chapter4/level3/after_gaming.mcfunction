# ===== 关卡游戏后时间线 =====
# 4-3

# --- 检查玩家进入下一个关卡 ---
execute positioned -141 -30 6 positioned ~-1.2~-1~-1.2 as @a[dx=1.4,dy=3,dz=1.4,tag=!spectator,scores={deathState=0}] at @s run function aw/levels/chapter4/level4/start
execute positioned -141 -30 6 positioned ~-2~-1~-2 as @e[dx=3,dy=3,dz=3,type=aw:wind_pearl] run kill @s

# --- 剧情 ---
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7看起来，这里就是寒冰神殿的最后一部分了。云儿，等会我会遇到什么样的守关怪物呢？"}]}
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......接下来比较特殊，应该会源源不断地出现怪物。镇守在这里的，是守卫者......"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这样啊？不过没关系，任何怪物都将被我绳之以法=p"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7不不不，你听我说完嘛。铭文写着【守卫者于此地获不死之身】，它们是不会受到伤害的。不要恋战，坚持住就是胜利！"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7什么？还有无法受到伤害的怪......好吧，撤回我上一句说的话qwq。"}]}
execute if score timeline time matches 400.. run function aw/lib/modify_data/timeline/disable_time_lapse
