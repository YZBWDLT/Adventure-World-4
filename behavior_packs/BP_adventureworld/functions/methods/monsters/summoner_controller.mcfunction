# ===== 怪物生成控制器 =====
# 当存在特定的生成器时，循环调用其中的方法

## --- 骷髅 ---
execute @e[name=skeleton1Summoner,c=1] ~~~ function methods/monsters/skeleton/level1
execute @e[name=skeleton2Summoner,c=1] ~~~ function methods/monsters/skeleton/level2
execute @e[name=skeleton3Summoner,c=1] ~~~ function methods/monsters/skeleton/level3
execute @e[name=skeleton4Summoner,c=1] ~~~ function methods/monsters/skeleton/level4
execute @e[name=skeletonWithSword1Summoner,c=1] ~~~ function methods/monsters/skeleton/level1_with_sword
execute @e[name=skeletonWithSword2Summoner,c=1] ~~~ function methods/monsters/skeleton/level2_with_sword

execute @e[name=stray1Summoner,c=1] ~~~ function methods/monsters/stray/level1
execute @e[name=stray2Summoner,c=1] ~~~ function methods/monsters/stray/level2
execute @e[name=stray3Summoner,c=1] ~~~ function methods/monsters/stray/level3
execute @e[name=stray4Summoner,c=1] ~~~ function methods/monsters/stray/level4

## --- 僵尸&溺尸&尸壳&僵尸猪灵 ---
execute @e[name=zombie1Summoner,c=1] ~~~ function methods/monsters/zombie/level1
execute @e[name=zombie2Summoner,c=1] ~~~ function methods/monsters/zombie/level2
execute @e[name=zombie3Summoner,c=1] ~~~ function methods/monsters/zombie/level3
execute @e[name=zombie4Summoner,c=1] ~~~ function methods/monsters/zombie/level4

execute @e[name=zombieBaby1Summoner,c=1] ~~~ function methods/monsters/zombie_baby/level1
execute @e[name=zombieBaby2Summoner,c=1] ~~~ function methods/monsters/zombie_baby/level2
execute @e[name=zombieBaby3Summoner,c=1] ~~~ function methods/monsters/zombie_baby/level3
execute @e[name=zombieBaby4Summoner,c=1] ~~~ function methods/monsters/zombie_baby/level4

execute @e[name=zombifiedPiglin1Summoner,c=1] ~~~ function methods/monsters/zombified_piglin/level1
execute @e[name=zombifiedPiglin2Summoner,c=1] ~~~ function methods/monsters/zombified_piglin/level2
execute @e[name=zombifiedPiglin3Summoner,c=1] ~~~ function methods/monsters/zombified_piglin/level3
execute @e[name=zombifiedPiglin4Summoner,c=1] ~~~ function methods/monsters/zombified_piglin/level4

execute @e[name=drowned1Summoner,c=1] ~~~ function methods/monsters/drowned/level1
execute @e[name=drowned2Summoner,c=1] ~~~ function methods/monsters/drowned/level2
execute @e[name=drowned3Summoner,c=1] ~~~ function methods/monsters/drowned/level3
execute @e[name=drownedWithTridentSummoner,c=1] ~~~ function methods/monsters/drowned/trident

execute @e[name=husk1Summoner,c=1] ~~~ function methods/monsters/husk
execute @e[name=huskBaby1Summoner,c=1] ~~~ function methods/monsters/husk_baby

## --- 猪灵&疣猪兽 ---
execute @e[name=piglin1Summoner,c=1] ~~~ function methods/monsters/piglin/level1
execute @e[name=piglin2Summoner,c=1] ~~~ function methods/monsters/piglin/level2
execute @e[name=piglin3Summoner,c=1] ~~~ function methods/monsters/piglin/level3
execute @e[name=piglin4Summoner,c=1] ~~~ function methods/monsters/piglin/level4

execute @e[name=hoglin1Summoner,c=1] ~~~ function methods/monsters/hoglin/level1
execute @e[name=hoglin2Summoner,c=1] ~~~ function methods/monsters/hoglin/level2
execute @e[name=hoglin3Summoner,c=1] ~~~ function methods/monsters/hoglin/level3
execute @e[name=hoglin4Summoner,c=1] ~~~ function methods/monsters/hoglin/level4

## --- 蜘蛛&洞穴蜘蛛 ---
execute @e[name=spider1Summoner,c=1] ~~~ function methods/monsters/spider/level1
execute @e[name=spider2Summoner,c=1] ~~~ function methods/monsters/spider/level2
execute @e[name=spider3Summoner,c=1] ~~~ function methods/monsters/spider/level3
execute @e[name=spider4Summoner,c=1] ~~~ function methods/monsters/spider/level4

execute @e[name=caveSpider1Summoner,c=1] ~~~ function methods/monsters/cave_spider/level1
execute @e[name=caveSpider2Summoner,c=1] ~~~ function methods/monsters/cave_spider/level2
execute @e[name=caveSpider3Summoner,c=1] ~~~ function methods/monsters/cave_spider/level3
execute @e[name=caveSpider4Summoner,c=1] ~~~ function methods/monsters/cave_spider/level4

execute @e[name=silverfish1Summoner,c=1] ~~~ function methods/monsters/silverfish/level1
execute @e[name=silverfish2Summoner,c=1] ~~~ function methods/monsters/silverfish/level2
execute @e[name=silverfish3Summoner,c=1] ~~~ function methods/monsters/silverfish/level3
execute @e[name=silverfish4Summoner,c=1] ~~~ function methods/monsters/silverfish/level4

## --- 苦力怕 ---
execute @e[name=creeperNormalSummoner,c=1] ~~~ function methods/monsters/creeper/normal_creeper
execute @e[name=creeperEnergySummoner,c=1] ~~~ function methods/monsters/creeper/energy_creeper
execute @e[name=creeperHardSummoner,c=1] ~~~ function methods/monsters/creeper/hard_creeper
execute @e[name=creeperSpeedSummoner,c=1] ~~~ function methods/monsters/creeper/speed_creeper

## --- 女巫 ---
execute @e[name=witchSummoner,c=1] ~~~ function methods/monsters/witch

## --- 守卫者 ---
execute @e[name=guardian1Summoner,c=1] ~~~ function methods/monsters/guardian

## --- 恶魂 ---
execute @e[name=ghastSummoner,c=1] ~~~ function methods/monsters/ghast

## --- 岩浆怪 ---
execute @e[name=magmaCubeSmallSummoner,c=1] ~~~ function methods/monsters/magma_cube/small
execute @e[name=magmaCubeMediumSummoner,c=1] ~~~ function methods/monsters/magma_cube/medium
execute @e[name=magmaCubeLargeSummoner,c=1] ~~~ function methods/monsters/magma_cube/large

## --- BOSS | 骷髅王 ---
execute @e[name=skeletonKingSummoner,c=1] ~~~ function methods/monsters/skeleton_king

## --- BOSS | 远古守卫者 ---
execute @e[name=elderGuardianSummoner,c=1] ~~~ function methods/monsters/elder_guardian

## --- BOSS | 烈焰之魂 ---
execute @e[name=blazeKingSummoner,c=1] ~~~ function methods/monsters/blaze_king

## --- BOSS | 猪灵蛮兵 ---
execute @e[name=piglinBruteBossSummoner,c=1] ~~~ function methods/monsters/piglin_brute_boss
