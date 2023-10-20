# ===== 生成女巫 =====
# 等级 1 | 较原版有削弱

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=witch1Summoner] ~~~ particle aw:summon_witch_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=witch1Summoner] ~~~ particle aw:summon_witch_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=witch1Summoner] ~~~ particle aw:summon_witch_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=witch1Summoner] ~~~ summon minecraft:witch ~~~ aw:level_1 "女巫 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=witch1Summoner] ~~~ summon minecraft:witch ~~~ aw:level_1 "女巫 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=witch1Summoner] ~~~ summon minecraft:witch ~~~ aw:level_1 "女巫 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=witch1Summoner] ~~~ summon minecraft:witch ~~~ aw:level_1 "女巫 | lv.1"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=witch1Summoner]