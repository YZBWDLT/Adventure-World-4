# ===== 生成溺尸 =====
# 等级 1 

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=drowned1Summoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=drowned1Summoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drowned1Summoner] ~~~ particle aw:summon_drowned_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=drowned1Summoner] ~~~ summon minecraft:drowned ~~~ aw:level_1 "溺尸 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=drowned1Summoner] ~~~ summon minecraft:drowned ~~~ aw:level_2 "溺尸 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=drowned1Summoner] ~~~ summon minecraft:drowned ~~~ aw:level_1 "溺尸 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=drowned1Summoner] ~~~ summon minecraft:drowned ~~~ aw:level_2 "溺尸 | lv.2"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=drowned1Summoner]