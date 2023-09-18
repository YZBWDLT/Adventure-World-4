# ===== 生成三叉戟溺尸 =====
# 仅带有三叉戟

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ particle aw:summon_drowned_particle ~~~

## --- 正式生成 ---

### 生成怪物，怪物生成数将根据玩家数目而非线性增长
### 玩家数目  1   2~3 4~6 7~10
### 怪物倍率  1   2   3   4
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=1..}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ minecraft:as_adult "§c三叉戟溺尸"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=2..}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ minecraft:as_adult "§c三叉戟溺尸"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=4..}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ minecraft:as_adult "§c三叉戟溺尸"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={background=7..}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ summon minecraft:drowned ~~~ minecraft:as_adult "§c三叉戟溺尸"

### 替换装备
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.head 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.chest 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.legs 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.feet 0 air
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.weapon.mainhand 0 trident

### 额外添加生成事件
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=drownedWithTridentSummoner] ~~~ event entity @e[x=~,y=~,z=~,r=1,type=drowned] minecraft:switch_to_ranged

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=drownedWithTridentSummoner]