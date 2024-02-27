# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -149 7 2 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -157 7 8 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -164 7 5 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -154 7 8 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -150 7 14 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -149 7 5 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -158 7 8 "aw:as_summoner" "drowned3Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -149 7 12 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -148 7 2 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -156 7 5 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -159 7 10 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -162 7 4 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -159 7 0 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -156 7 6 "aw:as_summoner" "guardian1Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -149 7 6 "aw:as_summoner" "drownedWithTridentSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -154 7 8 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -161 7 1 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -163 7 1 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -162 7 4 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -153 7 1 "aw:as_summoner" "stray2Summoner"

# --- 第4波 ---

# --- 第5波 ---