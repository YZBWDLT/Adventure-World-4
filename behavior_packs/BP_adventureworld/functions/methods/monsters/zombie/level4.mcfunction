# ===== 生成僵尸 =====
# 等级 4 | 钻石套

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ particle aw:summon_zombie_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "僵尸 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "僵尸 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "僵尸 | lv.4"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=zombie4Summoner] ~~~ summon zombie ~~~ aw:level_4 "僵尸 | lv.4"

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.head 0 diamond_helmet
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.chest 0 diamond_chestplate
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.legs 0 diamond_leggings
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.feet 0 diamond_boots
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=zombie4Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.weapon.mainhand 0 air

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=zombie4Summoner]