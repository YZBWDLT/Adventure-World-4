# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -77 -21 -40 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -80 -16 -41 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -74 -16 -37 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -74 -16 -44 "aw:as_summoner" "skeleton3Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -81 -21 -37 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -74 -19 -47 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -80 -20 -46 "aw:as_summoner" "caveSpider2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -72 -19 -34 "aw:as_summoner" "skeletonWithSword2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -77 -21 -41 "aw:as_summoner" "caveSpider3Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -77 -11 -45 "aw:as_summoner" "skeleton4Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -80 -16 -41 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -74 -16 -37 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -74 -16 -44 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -77 -21 -40 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -75 -21 -40 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -76 -21 -41 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -76 -21 -39 "aw:as_summoner" "zombie4Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -76 -21 -40 "aw:as_summoner" "caveSpider3Summoner"

# --- 第4波 ---

# --- 第5波 ---