# ===== 生成疣猪兽 =====
# 等级 1 | 较原版有削弱

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=hoglin1Summoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=hoglin1Summoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=hoglin1Summoner] ~~~ particle aw:summon_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=hoglin1Summoner] ~~~ summon minecraft:hoglin ~~~ aw:level_1 "疣猪兽 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=hoglin1Summoner] ~~~ summon minecraft:hoglin ~~~ aw:level_1 "疣猪兽 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=hoglin1Summoner] ~~~ summon minecraft:hoglin ~~~ aw:level_1 "疣猪兽 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=hoglin1Summoner] ~~~ summon minecraft:hoglin ~~~ aw:level_1 "疣猪兽 | lv.1"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=hoglin1Summoner]