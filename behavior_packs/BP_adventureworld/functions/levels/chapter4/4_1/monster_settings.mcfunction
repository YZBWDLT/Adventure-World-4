# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -165 17 -17 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -162 17 -22 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -161 17 -20 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -163 17 -17 "aw:as_summoner" "drowned2Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -160 12 -22 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -165 17 -16 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -164 12 -17 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -160 17 -25 "aw:as_summoner" "drowned2Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -163 17 -18 "aw:as_summoner" "stray3Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -160 17 -23 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -165 17 -23 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -164 12 -18 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -160 12 -22 "aw:as_summoner" "guardian1Summoner"

# --- 第4波 ---

# --- 第5波 ---