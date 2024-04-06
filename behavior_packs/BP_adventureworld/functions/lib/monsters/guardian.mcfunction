# ===== 生成守卫者 =====

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=guardian1Summoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=guardian1Summoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=guardian1Summoner] ~~~ particle aw:summon_drowned_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=guardian1Summoner] ~~~ summon minecraft:guardian ~~~ aw:level_1 "§a守卫者 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=guardian1Summoner] ~~~ summon minecraft:guardian ~~~ aw:level_2 "§b守卫者 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=guardian1Summoner] ~~~ summon minecraft:guardian ~~~ aw:level_3 "§d守卫者 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=guardian1Summoner] ~~~ summon minecraft:guardian ~~~ aw:level_4 "§6守卫者 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=guardian1Summoner]