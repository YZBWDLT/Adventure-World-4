# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -170 -14 26 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -174 -11 19 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -176 -14 20 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -173 -6 27 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -170 -3 25 "aw:as_summoner" "skeleton1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -175 -14 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -176 -8 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -170 -3 25 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -173 4 23 "aw:as_summoner" "skeleton1Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -173 0 20 "aw:as_summoner" "elderGuardianSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -171 -10 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -175 -10 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -173 4 23 "aw:as_summoner" "drowned2Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -171 -10 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -175 -10 23 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -170 12 19 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -174 16 27 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -173 -3 25 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -173 0 20 "aw:as_summoner" "drowned3Summoner"

# --- 第5波 ---