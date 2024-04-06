# ===== 生成苦力怕 =====
# 等级 3

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=creeperHardSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=creeperHardSummoner] ~~~ particle aw:summon_creeper_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=creeperHardSummoner] ~~~ particle aw:summon_creeper_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=creeperHardSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_1_hard_creeper "§a坚硬苦力怕 | lv.1"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=creeperHardSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_2_hard_creeper "§b坚硬苦力怕 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=creeperHardSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_3_hard_creeper "§d坚硬苦力怕 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=creeperHardSummoner] ~~~ summon minecraft:creeper ~~~ aw:level_4_hard_creeper "§6坚硬苦力怕 | lv.4"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=creeperHardSummoner]