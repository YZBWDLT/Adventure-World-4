# ===== 怪物生成控制器 =====
# 当存在特定的生成器时，循环调用其中的方法

## --- 播放音效 ---
## 2s前 | 生成粒子，播放音效警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=0..5}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=monsterSummonDelay,scores={time=10}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=monsterSummonDelay,scores={time=20}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=monsterSummonDelay,scores={time=25}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
## 0s时 | 播放召唤音效
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[family=summoner] ~~~ playsound mob.evocation_illager.prepare_attack @a ~~~ 1

## --- 骷髅 ---
execute @e[name=skeleton1Summoner,c=1] ~~~ function methods/monsters/skeleton/level1
execute @e[name=skeleton2Summoner,c=1] ~~~ function methods/monsters/skeleton/level2

## --- 僵尸 ---
execute @e[name=zombie1Summoner,c=1] ~~~ function methods/monsters/zombie/level1
execute @e[name=zombie2Summoner,c=1] ~~~ function methods/monsters/zombie/level2

## --- 溺尸 ---
execute @e[name=drowned1Summoner,c=1] ~~~ function methods/monsters/drowned/level1
execute @e[name=drowned2Summoner,c=1] ~~~ function methods/monsters/drowned/level2
execute @e[name=drowned3Summoner,c=1] ~~~ function methods/monsters/drowned/level3
execute @e[name=drownedWithTridentSummoner,c=1] ~~~ function methods/monsters/drowned/trident

## --- 尸壳 ---
execute @e[name=husk1Summoner,c=1] ~~~ function methods/monsters/husk
execute @e[name=huskBaby1Summoner,c=1] ~~~ function methods/monsters/husk_baby

## --- 蜘蛛 ---
execute @e[name=spider1Summoner,c=1] ~~~ function methods/monsters/spider/level1
execute @e[name=spider2Summoner,c=1] ~~~ function methods/monsters/spider/level2
execute @e[name=spider3Summoner,c=1] ~~~ function methods/monsters/spider/level3
execute @e[name=spider4Summoner,c=1] ~~~ function methods/monsters/spider/level4

## --- 苦力怕 ---
execute @e[name=creeper1Summoner,c=1] ~~~ function methods/monsters/creeper/level1
execute @e[name=creeper2Summoner,c=1] ~~~ function methods/monsters/creeper/level2
execute @e[name=creeper3Summoner,c=1] ~~~ function methods/monsters/creeper/level3

## --- 守卫者 ---
execute @e[name=guardian1Summoner,c=1] ~~~ function methods/monsters/guardian

## --- BOSS | 骷髅王 ---
execute @e[name=skeletonKingSummoner,c=1] ~~~ function methods/monsters/skeleton_king
