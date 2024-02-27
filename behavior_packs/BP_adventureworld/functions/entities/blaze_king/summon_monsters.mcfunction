scoreboard players random @e[name=randomMonster] data 0 4
scoreboard players set @e[name=monsterSummonDelay] time 40

execute @e[name=randomMonster,scores={data=0}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=randomMonster,scores={data=1}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "witchSummoner"
execute @e[name=randomMonster,scores={data=2}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=randomMonster,scores={data=3}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "zombie3Summoner"
execute @e[name=randomMonster,scores={data=4}] ~~~ summon je:marker -75 -37 35 "aw:as_summoner" "skeleton3Summoner"