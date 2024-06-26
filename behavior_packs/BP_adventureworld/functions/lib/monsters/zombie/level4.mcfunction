# ===== 生成僵尸 =====
# 等级 4 

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "§d僵尸 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2..}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_5 "§6僵尸 | lv.5"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "§d僵尸 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_5 "§6僵尸 | lv.5"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=zombie4Summoner]