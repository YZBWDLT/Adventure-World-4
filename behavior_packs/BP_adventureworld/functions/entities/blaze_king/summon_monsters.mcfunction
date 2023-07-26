scoreboard players random @e[name=randomMonster] stats 0 4

execute @e[name=randomMonster,scores={stats=0}]  -75 -37 35 function system/summon/cave_spider3 
execute @e[name=randomMonster,scores={stats=1}]  -75 -37 35 function system/summon/witch2
execute @e[name=randomMonster,scores={stats=2}]  -75 -37 35 function system/summon/creeper2
execute @e[name=randomMonster,scores={stats=3}]  -75 -37 35 function system/summon/zombie3
execute @e[name=randomMonster,scores={stats=4}]  -75 -37 35 function system/summon/skeleton3