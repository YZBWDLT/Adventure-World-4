# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -175 -14 25 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -176 -9 19 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -172 -6 26 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -169 -3 25 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -177 -14 20 "aw:as_summoner" "creeperNormalSummoner"

# --- 第2波 ---
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -176 -7 24 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -169 -14 26 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -170 2 23 "aw:as_summoner" "drowned3Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -174 -15 21 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -172 0 19 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -174 4 23 "aw:as_summoner" "elderGuardianSummoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -173 4 23 "aw:as_summoner" "drowned2Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -173 8 27 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -172 -6 26 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -173 -14 26 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -169 2 23 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -173 -11 20 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -169 10 27 "aw:as_summoner" "drowned3Summoner"

# --- 第5波 ---