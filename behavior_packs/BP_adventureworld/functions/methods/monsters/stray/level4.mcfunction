# ===== 生成流浪者 =====
# 等级 4

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=stray4Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=stray4Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray4Summoner] ~~~ particle aw:summon_stray_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=stray4Summoner] ~~~ summon minecraft:stray ~~~ aw:level_4 "流浪者 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=stray4Summoner] ~~~ summon minecraft:stray ~~~ aw:level_5 "流浪者 | lv.5"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=stray4Summoner] ~~~ summon minecraft:stray ~~~ aw:level_6 "流浪者 | lv.6"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..7}] ~~~ execute @e[name=stray4Summoner] ~~~ summon minecraft:stray ~~~ aw:level_7 "流浪者 | lv.7"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=stray4Summoner]