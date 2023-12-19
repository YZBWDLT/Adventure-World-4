# ===== 生成苦力怕 =====
# 等级 1

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=creeper0Summoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=creeper0Summoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=creeper0Summoner] ~~~ particle aw:summon_creeper_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=creeper0Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_1 "苦力怕 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=creeper0Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_2 "苦力怕 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=creeper0Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_3 "苦力怕 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeper0Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"

execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=creeper0Summoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_3
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=creeper0Summoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=creeper0Summoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_5
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeper0Summoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_6

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=creeper0Summoner]