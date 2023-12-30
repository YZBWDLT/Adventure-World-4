# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -159 -21 66 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -159 -21 56 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -149 -21 56 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -149 -21 66 "aw:as_summoner" "skeleton1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -154 -21 66 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -154 -21 56 "aw:as_summoner" "creeperEnergySummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -159 -21 61 "aw:as_summoner" "creeperHardSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -149 -21 61 "aw:as_summoner" "creeperSpeedSummoner"

# --- 第3波 ---
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -154 -21 66 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -154 -21 56 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -159 -21 61 "aw:as_summoner" "zombieBaby1Summonerr"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -154 -15 59 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -154 -15 65 "aw:as_summoner" "skeleton3Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -154 -21 61 "aw:as_summoner" "skeletonKingSummoner"

# --- 第5波 ---