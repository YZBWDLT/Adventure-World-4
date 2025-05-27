# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -162 -18 108 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -169 -17 113 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -162 -18 105 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -170 -17 102 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -162 -18 113 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -165 -18 94  "aw:as_summoner" "piglin3Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -163 -18 108 "aw:as_summoner" "hoglin2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -162 -18 103 "aw:as_summoner" "hoglin3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -180 -18 111 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -177 -17 109 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -177 -16 107 "aw:as_summoner" "piglin3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -181 -17 105 "aw:as_summoner" "piglin4Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -162 -18 106 "aw:as_summoner" "piglinBruteSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -171 -17 100 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -168 -4 108 "aw:as_summoner" "ghastSummoner"

# --- 第4波 ---

# --- 第5波 ---