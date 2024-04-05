# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -78 -35 -3 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -68 -37 -10 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -71 -34 -2 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -81 -37 -9 "aw:as_summoner" "skeleton4Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -71 -38 -2 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -79 -38 -2 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -76 -38 -2 "aw:as_summoner" "skeleton4Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -79 -37 -10 "aw:as_summoner" "spider3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -72 -37 -8 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -79 -35 -3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -70 -34 -3 "aw:as_summoner" "caveSpider3Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -79 -38 -4 "aw:as_summoner" "silverfish1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -77 -38 -4 "aw:as_summoner" "silverfish1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -75 -38 -4 "aw:as_summoner" "skeletonWithSword2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -73 -38 -4 "aw:as_summoner" "silverfish1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -71 -38 -4 "aw:as_summoner" "silverfish1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -81 -38 4 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -69 -38 5 "aw:as_summoner" "caveSpider4Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -75 -37 -14 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -76 -37 -14 "aw:as_summoner" "zombie4Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -79 -36 -12 "aw:as_summoner" "silverfish2Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -68 -37 -11 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -70 -39 3 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -70 -39 4 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -70 -39 5 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -69 -38 -1 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -69 -38 -2 "aw:as_summoner" "silverfish3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -69 -38 -3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -82 -38 -1 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -82 -38 -2 "aw:as_summoner" "silverfish3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -82 -38 -3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -78 -35 -3 "aw:as_summoner" "skeleton4Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -71 -34 -2 "aw:as_summoner" "skeleton4Summoner"


# --- 第5波 ---