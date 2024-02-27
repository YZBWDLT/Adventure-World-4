# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -74 -35 -2 "aw:as_summoner" "drownedWithTridentSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -79 -39 3 "aw:as_summoner" "drownedWithTridentSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -71 -37 -13 "aw:as_summoner" "drownedWithTridentSummoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -70 -39 3 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -79 -39 3 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -78 -37 -11 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -74 -35 -2 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -80 -35 -3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -71 -37 -13 "aw:as_summoner" "creeperNormalSummoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -70 -39 3 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -79 -39 3 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -71 -37 -13 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -78 -37 -11 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -74 -35 -2 "aw:as_summoner" "caveSpider3Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -75 -37 -11 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -74 -35 -2 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -80 -35 -3 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -71 -37 -13 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -70 -39 3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -79 -39 3 "aw:as_summoner" "caveSpider3Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -75 -39 4 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -78 -37 -11 "aw:as_summoner" "witchSummoner"

# --- 第5波 ---