# ===== 生成苦力怕 =====
# 普通苦力怕

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ particle aw:summon_creeper_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_1 "苦力怕 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_2 "苦力怕 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_3 "苦力怕 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeperNormalSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_4 "苦力怕 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=creeperNormalSummoner]