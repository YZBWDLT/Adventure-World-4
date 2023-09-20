# ===== 生成僵尸猪灵 =====
# 等级 2 | 皮革套

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ particle aw:summon_zombified_piglin_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ summon zombie_pigman ~~~ minecraft:as_adult "僵尸猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ summon zombie_pigman ~~~ minecraft:as_adult "僵尸猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ summon zombie_pigman ~~~ minecraft:as_adult "僵尸猪灵 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ summon zombie_pigman ~~~ minecraft:as_adult "僵尸猪灵 | lv.2"

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.head 0 leather_helmet
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.chest 0 leather_chestplate
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.legs 0 leather_leggings
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.feet 0 leather_boots
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombifiedPiglin2Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.weapon.mainhand 0 air

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=zombifiedPiglin2Summoner]