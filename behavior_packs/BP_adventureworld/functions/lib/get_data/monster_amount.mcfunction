# ===== 怪物数目检测器 ===
# 调用此方法以检测当前的怪物数目并记录在变量data.monsterAmount中

scoreboard players set @e[name=monsterAmount] data 0

## 非4-4时，正常检测
execute @e[name=gameId,scores={data=!440}] ~~~ execute @e[family=monster] ~~~ scoreboard players add @e[name=monsterAmount] data 1
## 4-4时，排除所有的守卫者
execute @e[name=gameId,scores={data=440}] ~~~ execute @e[family=monster,type=!guardian] ~~~ scoreboard players add @e[name=monsterAmount] data 1
