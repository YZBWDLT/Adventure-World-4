# ===== 生成尸壳 =====
# 等级 1 

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=husk1Summoner] ~~~ particle aw:summon_husk_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=husk1Summoner] ~~~ particle aw:summon_husk_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=husk1Summoner] ~~~ particle aw:summon_husk_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=husk1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_1 "§a尸壳 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..}] ~~~ execute @e[name=husk1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_2 "§a尸壳 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=husk1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_1 "§a尸壳 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=husk1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_2 "§a尸壳 | lv.2"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=husk1Summoner]