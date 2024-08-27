# ===== 生成小尸壳 =====
# 等级 1

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ particle aw:summon_husk_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ particle aw:summon_husk_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ particle aw:summon_husk_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_1_baby "§a小尸壳 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2..}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_2_baby "§a小尸壳 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_1_baby "§a小尸壳 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=huskBaby1Summoner] ~~~ summon minecraft:husk ~~~ aw:level_2_baby "§a小尸壳 | lv.2"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=huskBaby1Summoner]