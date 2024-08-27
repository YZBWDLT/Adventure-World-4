# ===== 生成烈焰之魂 =====

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=blazeKingSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=blazeKingSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=blazeKingSummoner] ~~~ particle aw:summon_blaze_king_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=blazeKingSummoner] ~~~ summon aw:blaze_king ~~~ aw:level_1
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=blazeKingSummoner] ~~~ summon aw:blaze_king ~~~ aw:level_2
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=blazeKingSummoner] ~~~ summon aw:blaze_king ~~~ aw:level_3
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=blazeKingSummoner] ~~~ summon aw:blaze_king ~~~ aw:level_4

### 数据初始化
scoreboard players random @e[family=blaze_king] temp3 20 40

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=blazeKingSummoner]