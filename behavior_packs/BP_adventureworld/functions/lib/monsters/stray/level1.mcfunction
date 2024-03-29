# ===== 生成流浪者 =====
# 等级 1

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray ~~~ aw:level_1 "§a流浪者 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray ~~~ aw:level_2 "§a流浪者 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray ~~~ aw:level_3 "§b流浪者 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray ~~~ aw:level_4 "§b流浪者 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=stray1Summoner]