# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -80 -21 -43 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -73 -21 -41 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -81 -21 -39 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -77 -21 -41 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -77 -20 -34 "aw:as_summoner" "caveSpider2Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -77 -21 -43 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -71 -20 -41 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -73 -20 -39 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -80 -20 -37 "aw:as_summoner" "zombie3Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -77 -21 -39 "aw:as_summoner" "zombie3Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -72 -20 -45 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -82 -20 -45 "aw:as_summoner" "witchSummoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -82 -20 -35 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -72 -20 -35 "aw:as_summoner" "caveSpider2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -77 -21 -41 "aw:as_summoner" "skeleton3Summoner"

# --- 第4波 ---

# --- 第5波 ---