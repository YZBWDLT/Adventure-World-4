# ===== 生成三叉戟溺尸 =====
# 仅带有三叉戟

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ aw:level_1_with_trident "§c三叉戟溺尸 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ aw:level_2_with_trident "§c三叉戟溺尸 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ aw:level_3_with_trident "§c三叉戟溺尸 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ aw:level_4_with_trident "§c三叉戟溺尸 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=drownedWithTridentSummoner]