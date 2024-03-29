# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -159 -21 66 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -159 -21 56 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -149 -21 56 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -149 -21 66 "aw:as_summoner" "skeleton1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -154 -21 66 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -154 -21 56 "aw:as_summoner" "creeperEnergySummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -159 -21 61 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -149 -21 61 "aw:as_summoner" "creeperEnergySummoner"

execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -148.0 -21 56.0 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -159.0 -21 67.0 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -154 -21 61 "aw:as_summoner" "zombieBaby1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -148.0 -21 67.0 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -159.0 -21 56.0 "aw:as_summoner" "zombie2Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -154 -21 61 "aw:as_summoner" "skeletonKingSummoner"

# --- 第4波 ---

# --- 第5波 ---