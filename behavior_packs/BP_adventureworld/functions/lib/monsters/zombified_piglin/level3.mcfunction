# ===== 生成僵尸猪灵 =====
# 等级 3

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ summon zombie_pigman ~~~ aw:level_3 "僵尸猪灵 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ summon zombie_pigman ~~~ aw:level_4 "僵尸猪灵 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ summon zombie_pigman ~~~ aw:level_3 "僵尸猪灵 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=zombifiedPiglin3Summoner] ~~~ summon zombie_pigman ~~~ aw:level_4 "僵尸猪灵 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=zombifiedPiglin3Summoner]