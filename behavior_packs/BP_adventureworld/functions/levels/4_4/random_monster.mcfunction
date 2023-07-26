# 随机位置 随机怪物生成器

## 复原计时器，每3-10秒刷新一次
scoreboard players random @e[name=monsterRefreshLeft] time 3 10

## 随机设定位置和怪物
scoreboard players random @e[name=randomLocation] stats 1 5
scoreboard players random @e[name=randomMonster] stats 1 8

execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=1}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=2}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=3}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=4}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=5}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=6}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=7}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={stats=1}] ~~~ execute @e[name=randomMonster,scores={stats=8}] ~~~ execute @a[tag=alive] -122 -31 6 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=1}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/creeper2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=2}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/drowned2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=3}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=4}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/skeleton2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=5}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/spider2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=6}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/stray2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=7}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/zombie2
execute @e[name=randomLocation,scores={stats=2}] ~~~ execute @e[name=randomMonster,scores={stats=8}] ~~~ execute @a[tag=alive] -130 -31 -2 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=1}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/creeper2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=2}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/drowned2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=3}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=4}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/skeleton2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=5}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/spider2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=6}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/stray2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=7}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/zombie2
execute @e[name=randomLocation,scores={stats=3}] ~~~ execute @e[name=randomMonster,scores={stats=8}] ~~~ execute @a[tag=alive] -130 -31 14 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=1}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=2}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=3}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=4}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=5}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=6}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=7}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={stats=4}] ~~~ execute @e[name=randomMonster,scores={stats=8}] ~~~ execute @a[tag=alive] -130 -31 6 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=1}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=2}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=3}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=4}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=5}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=6}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=7}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={stats=5}] ~~~ execute @e[name=randomMonster,scores={stats=8}] ~~~ execute @a[tag=alive] -138 -31 6 function system/summon/zombie_baby2
