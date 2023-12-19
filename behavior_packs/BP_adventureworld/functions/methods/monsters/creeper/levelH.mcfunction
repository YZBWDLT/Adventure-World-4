# ===== 生成苦力怕 =====
# 等级 3

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=creeperHSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=creeperHSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=creeperHSummoner] ~~~ particle aw:summon_creeper_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=creeperHSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_H1 "坚硬苦力怕 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=creeperHSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_H2 "坚硬苦力怕 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=creeperHSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_H3 "坚硬苦力怕 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeperHSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_H4 "坚硬苦力怕 | lv.4"

execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1}] ~~~ execute @e[name=creeperHSummoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_h3
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..3}] ~~~ execute @e[name=creeperHSummoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_h4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..6}] ~~~ execute @e[name=creeperHSummoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_h5
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=creeperHSummoner] ~~~ tag @e[type=minecraft:creeper,r=2] add explode_h6

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=creeperHSummoner]