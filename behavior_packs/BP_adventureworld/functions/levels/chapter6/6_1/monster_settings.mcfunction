# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -72 -31 -48 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -76 -31 -52 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -74 -31 -59 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -78 -31 -62 "aw:as_summoner" "caveSpider1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 -27 -52 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -69 -27 -59 "aw:as_summoner" "skeleton2Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -77 -31 -47 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -76 -31 -53 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -73 -28 -54 "aw:as_summoner" "spider2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -71 -31 -58 "aw:as_summoner" "caveSpider2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -75 -31 -62 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -80 -27 -58 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -70 -30 -49 "aw:as_summoner" "creeperNormalSummoner"

# --- 第3波 ---

# --- 第4波 ---

# --- 第5波 ---