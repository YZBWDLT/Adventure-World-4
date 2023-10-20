# ===== 生成流浪者 =====
# 等级 1 | 弓

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ particle aw:summon_stray_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray "流浪者 | lv.1" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray "流浪者 | lv.1" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray "流浪者 | lv.1" ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=stray1Summoner] ~~~ summon minecraft:stray "流浪者 | lv.1" ~~~

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.head 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.chest 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.legs 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.feet 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=stray1Summoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.weapon.mainhand 0 minecraft:bow

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=stray1Summoner]