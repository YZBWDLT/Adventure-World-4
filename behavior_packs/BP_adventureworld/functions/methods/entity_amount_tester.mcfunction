# 实体数量检测器

scoreboard players set @e[name=monsterAmount] background 0
## 非4-4时，正常检测
execute @e[name=level,scores={background=!440}] ~~~ execute @e[family=monster] ~~~ scoreboard players add @e[name=monsterAmount] background 1
## 4-4时，排除所有的守卫者
execute @e[name=level,scores={background=440}] ~~~ execute @e[family=monster,type=!guardian] ~~~ scoreboard players add @e[name=monsterAmount] background 1

## 绳枪检测器
scoreboard players set @e[name=hookshotAmount] background 0
execute @e[type=aw:hookshot] ~~~ scoreboard players add @e[name=hookshotAmount] background 1

## 存活玩家检测器
scoreboard players set @e[name=alivePlayersAmount] background 0
execute @e[tag=alive] ~~~ scoreboard players add @e[name=alivePlayersAmount] background 1