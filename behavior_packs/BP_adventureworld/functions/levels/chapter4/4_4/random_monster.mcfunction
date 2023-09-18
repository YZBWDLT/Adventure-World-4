# 随机位置 随机怪物生成器

## 复原计时器，每3-10秒刷新一次
scoreboard players random @e[name=monsterRefreshLeft] time 3 10

## 随机设定位置和怪物
scoreboard players random @e[name=randomLocation] background 1 5
scoreboard players random @e[name=randomMonster] background 1 8

execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=1}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=2}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=3}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=4}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=5}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=6}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=7}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={background=1}] ~~~ execute @e[name=randomMonster,scores={background=8}] ~~~ execute @a[scores={isAlive=1}] -122 -31 6 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=1}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/creeper2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=2}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/drowned2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=3}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=4}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/skeleton2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=5}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/spider2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=6}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/stray2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=7}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/zombie2
execute @e[name=randomLocation,scores={background=2}] ~~~ execute @e[name=randomMonster,scores={background=8}] ~~~ execute @a[scores={isAlive=1}] -130 -31 -2 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=1}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/creeper2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=2}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/drowned2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=3}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=4}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/skeleton2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=5}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/spider2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=6}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/stray2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=7}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/zombie2
execute @e[name=randomLocation,scores={background=3}] ~~~ execute @e[name=randomMonster,scores={background=8}] ~~~ execute @a[scores={isAlive=1}] -130 -31 14 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=1}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=2}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=3}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=4}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=5}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=6}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=7}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={background=4}] ~~~ execute @e[name=randomMonster,scores={background=8}] ~~~ execute @a[scores={isAlive=1}] -130 -31 6 function system/summon/zombie_baby2

execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=1}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/creeper2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=2}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/drowned2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=3}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/drowned_with_trident2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=4}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/skeleton2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=5}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/spider2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=6}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/stray2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=7}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/zombie2
execute @e[name=randomLocation,scores={background=5}] ~~~ execute @e[name=randomMonster,scores={background=8}] ~~~ execute @a[scores={isAlive=1}] -138 -31 6 function system/summon/zombie_baby2