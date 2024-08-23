# ===== 生成僵尸猪灵 =====
# 等级 4

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ summon zombie_pigman ~~~ aw:level_4 "§d僵尸猪灵 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2..}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ summon zombie_pigman ~~~ aw:level_5 "§6僵尸猪灵 | lv.5"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ summon zombie_pigman ~~~ aw:level_4 "§d僵尸猪灵 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=zombifiedPiglin4Summoner] ~~~ summon zombie_pigman ~~~ aw:level_5 "§6僵尸猪灵 | lv.5"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=zombifiedPiglin4Summoner]