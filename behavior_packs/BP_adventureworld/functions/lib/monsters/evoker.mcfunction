# ===== 生成唤魔者 =====

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=evokerSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=evokerSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=evokerSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=evokerSummoner] ~~~ summon evocation_illager ~~~ aw:level_1 "§c唤魔法师 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=evokerSummoner] ~~~ summon evocation_illager ~~~ aw:level_2 "§c唤魔法师 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=evokerSummoner] ~~~ summon evocation_illager ~~~ aw:level_3 "§c唤魔法师 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=evokerSummoner] ~~~ summon evocation_illager ~~~ aw:level_4 "§c唤魔法师 | lv.4"

execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=evokerSummoner] ~~~ summon ravager ~~~ aw:level_1 "§c劫掠兽 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=evokerSummoner] ~~~ summon ravager ~~~ aw:level_2 "§c劫掠兽 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=evokerSummoner] ~~~ summon ravager ~~~ aw:level_3 "§c劫掠兽 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=evokerSummoner] ~~~ summon ravager ~~~ aw:level_4 "§c劫掠兽 | lv.4"

ride @e[family=evoker] start_riding @e[family=ravager]

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=evokerSummoner]