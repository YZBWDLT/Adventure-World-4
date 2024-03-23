# ===== 召唤生物 =====

## 倒计时
scoreboard players remove @s temp 1

## 当时间结束后选取随机怪物值（如果怪物数目超过10个，阻止其生成）
execute @s[scores={temp=0}] ~~~ execute @e[name=monsterAmount,scores={data=..9}] ~~~ scoreboard players random @e[name=randomMonster] data 0 100
execute @s[scores={temp=0}] ~~~ execute @e[name=monsterAmount,scores={data=10..}] ~~~ scoreboard players set @e[name=randomMonster] data 101

execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=0..10}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "spider3Summoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=11..20}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "caveSpider3Summoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=21..30}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "witchSummoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=31..50}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "creeperHardSummoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=51..75}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "zombie4Summoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=76..100}] ~~~ execute @r[type=aw:marker,family=random_teleporter] ~~~ summon aw:marker ~~~ "aw:as_summoner" "skeleton3Summoner"
execute @s[scores={temp=0}] ~~~ execute @e[name=randomMonster,scores={data=0..100}] ~~~ function lib/states/monster_summon_delay/enable_40ticks

## 重置时间
## 一二阶段时每5-10秒生成，三阶段时每3-5秒生成
scoreboard players random @s[scores={temp=!1..10,temp2=1..2}] temp 5 10
scoreboard players random @s[scores={temp=!1..5,temp2=3}] temp 3 5
