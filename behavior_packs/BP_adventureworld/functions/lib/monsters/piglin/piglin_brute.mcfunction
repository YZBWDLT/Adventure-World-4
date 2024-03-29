# ===== 生成猪灵蛮兵 =====
# 钻石套

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ particle aw:summon_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ summon piglin_brute "§b猪灵蛮兵 | lv.1" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ summon piglin_brute "§d猪灵蛮兵 | lv.2" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ summon piglin_brute "§6猪灵蛮兵 | lv.3" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ execute @e[name=piglinBruteSummoner] ~~~ summon piglin_brute "§c猪灵蛮兵 | lv.4" ~~~

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=piglinBruteSummoner]