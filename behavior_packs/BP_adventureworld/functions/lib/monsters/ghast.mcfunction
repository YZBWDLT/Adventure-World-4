# ===== 生成恶魂 =====

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=ghastSummoner] ~~~ particle aw:summon_ghast_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=ghastSummoner] ~~~ particle aw:summon_ghast_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=ghastSummoner] ~~~ particle aw:summon_ghast_particle ~~~

## --- 正式生成 ---
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=ghastSummoner] ~~~ summon minecraft:ghast ~~~ aw:level_1 "§a恶魂 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ execute @e[name=ghastSummoner] ~~~ summon minecraft:ghast ~~~ aw:level_2 "§b恶魂 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=ghastSummoner] ~~~ summon minecraft:ghast ~~~ aw:level_3 "§d恶魂 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=ghastSummoner] ~~~ summon minecraft:ghast ~~~ aw:level_4 "§6恶魂 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=ghastSummoner]