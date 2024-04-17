# ===== 怪物最大数目检测器 ===
# 调用此方法以检测当前波的最大怪物数目并记录在变量data.maxMonsterAmount中

scoreboard players set maxMonsterAmount data 0

## 非4-4时，正常检测
execute @e[name=gameId,scores={data=!440}] ~~~ execute @e[family=monster] ~~~ scoreboard players add maxMonsterAmount data 1
## 4-4时，排除所有的守卫者
execute @e[name=gameId,scores={data=440}] ~~~ execute @e[family=monster,type=!guardian] ~~~ scoreboard players add maxMonsterAmount data 1
