# ===== 生成苦力怕 =====
# 等级 4 | 较原版有加强

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=creeper4Summoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=creeper4Summoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=creeper4Summoner] ~~~ particle aw:summon_creeper_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=creeper4Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=creeper4Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=creeper4Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeper4Summoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"

## --- 附加效果 ---
### 水下呼吸
execute @e[name=creeper4Summoner] ~~~ effect @e[type=creeper,r=2] water_breathing 1000 0 true

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=creeper4Summoner]