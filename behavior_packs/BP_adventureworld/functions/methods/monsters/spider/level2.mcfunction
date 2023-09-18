# ===== 生成蜘蛛 =====
# 等级 2 | 原版

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=spider2Summoner] ~~~ particle aw:summon_spider_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=spider2Summoner] ~~~ particle aw:summon_spider_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=spider2Summoner] ~~~ particle aw:summon_spider_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=spider2Summoner] ~~~ summon minecraft:spider ~~~ aw:level_2 "蜘蛛 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=spider2Summoner] ~~~ summon minecraft:spider ~~~ aw:level_2 "蜘蛛 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=spider2Summoner] ~~~ summon minecraft:spider ~~~ aw:level_2 "蜘蛛 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=spider2Summoner] ~~~ summon minecraft:spider ~~~ aw:level_2 "蜘蛛 | lv.2"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=spider2Summoner]