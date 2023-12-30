# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -180 -17 9  "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -180 -21 2  "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -183 -21 10 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -191 -21 10 "aw:as_summoner" "drowned1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -181 -17 12 "aw:as_summoner" "drowned1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -180 -21 9  "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -181 -17 13 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -178 -17 10 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -180 -17 8  "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -183 -17 11 "aw:as_summoner" "drowned2Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -186 -21 15 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -185 -21 5  "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -180 -17 10  "aw:as_summoner" "drownedWithTridentSummoner"

# --- 第4波 ---

# --- 第5波 ---