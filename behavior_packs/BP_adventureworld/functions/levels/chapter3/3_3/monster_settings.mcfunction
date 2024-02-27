# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -169 -32 29 "aw:as_summoner" "drowned1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -163 -28 24 "aw:as_summoner" "drowned1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -157 -24 29 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -163 -32 33 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -163 -32 25 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -154 -32 29 "aw:as_summoner" "drowned2Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -169 -32 29 "aw:as_summoner" "drownedWithTridentSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -156 -24 29 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -163 -22 34 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -162 -31 34 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -162 -32 29 "aw:as_summoner" "guardian1Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -167 -20 34 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -156 -24 30 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -162 -28 24 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -162 -32 29 "aw:as_summoner" "drownedWithTridentSummoner"

# --- 第4波 ---

# --- 第5波 ---