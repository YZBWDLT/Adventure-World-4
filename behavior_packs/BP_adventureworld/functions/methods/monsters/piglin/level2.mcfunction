# ===== 生成猪灵 =====
# 等级 2 | 金套

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=piglin2Summoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=piglin2Summoner] ~~~ particle aw:summon_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglin2Summoner] ~~~ particle aw:summon_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=piglin2Summoner] ~~~ summon piglin ~~~ aw:level_2 "猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=piglin2Summoner] ~~~ summon piglin ~~~ aw:level_2 "猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=piglin2Summoner] ~~~ summon piglin ~~~ aw:level_2 "猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=piglin2Summoner] ~~~ summon piglin ~~~ aw:level_2 "猪灵 | lv.2"

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.head 0 golden_helmet
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.chest 0 golden_chestplate
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.legs 0 golden_leggings
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=piglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.feet 0 golden_boots

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=piglin2Summoner]