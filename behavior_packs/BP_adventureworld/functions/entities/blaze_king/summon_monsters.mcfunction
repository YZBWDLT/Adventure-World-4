scoreboard players random @e[name=randomMonster] background 0 4
scoreboard players set @e[name=monsterSummonDelay] time 40

execute @e[name=randomMonster,scores={background=0}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=randomMonster,scores={background=1}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "witch2Summoner"
execute @e[name=randomMonster,scores={background=2}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "creeper0Summoner"
execute @e[name=randomMonster,scores={background=3}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "zombie3Summoner"
execute @e[name=randomMonster,scores={background=4}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "skeleton3Summoner"