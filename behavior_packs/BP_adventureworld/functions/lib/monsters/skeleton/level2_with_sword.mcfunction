# ===== 生成骷髅敢死队 =====
# 等级 2

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ particle aw:summon_skeleton_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ particle aw:summon_skeleton_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ particle aw:summon_skeleton_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ summon minecraft:skeleton ~~~ aw:level_2_sword "§c骷髅敢死队 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ summon minecraft:skeleton ~~~ aw:level_3_sword "§c骷髅敢死队 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ summon minecraft:skeleton ~~~ aw:level_4_sword "§c骷髅敢死队 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=skeletonWithSword2Summoner] ~~~ summon minecraft:skeleton ~~~ aw:level_5_sword "§c骷髅敢死队 | lv.5"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=skeletonWithSword2Summoner]