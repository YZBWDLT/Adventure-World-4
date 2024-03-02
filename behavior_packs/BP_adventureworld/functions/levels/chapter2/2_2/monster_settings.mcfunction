# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -89 0 72 "aw:as_summoner" "zombie1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 0 62 "aw:as_summoner" "zombie1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -95 -1 68 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -81 -6 69 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -93 -9 65 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -92 -17 62 "aw:as_summoner" "spider2Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -92 -9 65 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -79 -15 70 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -89 -17 61 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -74 -11 62 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -95 -1 68 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -82 0 62 "aw:as_summoner" "skeleton1Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -87 -17 68 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -74 -12 64 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -98 -3 63 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -95 -12 75 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -78 -5 65 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -89 -7 64 "aw:as_summoner" "spider1Summoner"

# --- 第4波 ---

# --- 第5波 ---