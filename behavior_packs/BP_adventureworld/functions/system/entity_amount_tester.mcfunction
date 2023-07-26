# 实体数量检测器

scoreboard players set @e[name=monsterAmount] stats 0
## 非4-4时，正常检测
execute @e[name=level,scores={stats=!440}] ~~~ execute @e[family=monster] ~~~ scoreboard players add @e[name=monsterAmount] stats 1
## 4-4时，排除所有的守卫者
execute @e[name=level,scores={stats=440}] ~~~ execute @e[family=monster,type=!guardian] ~~~ scoreboard players add @e[name=monsterAmount] stats 1

## 绳枪检测器
scoreboard players set @e[name=hookshotAmount] stats 0
execute @e[type=aw:hookshot] ~~~ scoreboard players add @e[name=hookshotAmount] stats 1

## 存活玩家检测器
scoreboard players set @e[name=alivePlayersAmount] stats 0
execute @e[tag=alive] ~~~ scoreboard players add @e[name=alivePlayersAmount] stats 1