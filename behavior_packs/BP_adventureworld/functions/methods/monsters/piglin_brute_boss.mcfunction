# ===== 生成猪灵蛮兵 =====
# 钻石套

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ particle aw:summon_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ summon piglin_brute "猪灵蛮兵" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ summon piglin_brute "猪灵蛮兵" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ summon piglin_brute "猪灵蛮兵" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ summon piglin_brute "猪灵蛮兵" ~~~

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.head 0 diamond_helmet
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.chest 0 diamond_chestplate
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.legs 0 diamond_leggings
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.feet 0 diamond_boots
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglinBruteBossSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.weapon.mainhand 0 diamond_axe

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=piglinBruteBossSummoner]