# ===== 生成女巫 =====
# 等级 1

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=witchSummoner] ~~~ particle aw:summon_witch_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=witchSummoner] ~~~ particle aw:summon_witch_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=witchSummoner] ~~~ particle aw:summon_witch_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=witchSummoner] ~~~ summon minecraft:witch ~~~ aw:level_1 "§a女巫 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=witchSummoner] ~~~ summon minecraft:witch ~~~ aw:level_2 "§b女巫 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=witchSummoner] ~~~ summon minecraft:witch ~~~ aw:level_3 "§d女巫 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=witchSummoner] ~~~ summon minecraft:witch ~~~ aw:level_4 "§6女巫 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=witchSummoner]