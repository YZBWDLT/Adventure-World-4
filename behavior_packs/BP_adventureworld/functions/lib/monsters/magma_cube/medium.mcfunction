# ===== 生成岩浆怪 =====
# 中型

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ particle aw:summon_magma_cube_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ particle aw:summon_magma_cube_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ particle aw:summon_magma_cube_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ summon magma_cube ~~~ spawn_medium "岩浆怪"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ summon magma_cube ~~~ spawn_medium "岩浆怪"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ summon magma_cube ~~~ spawn_medium "岩浆怪"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=magmaCubeMediumSummoner] ~~~ summon magma_cube ~~~ spawn_medium "岩浆怪"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=magmaCubeMediumSummoner]