# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -200 -16 98 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -207 -16 90 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -214 -18 95 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ summon je:marker -205 -16 99 "aw:as_summoner" "zombifiedPiglin3Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -197 -10 103 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -210 -6 98 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=2}] ~~~ summon je:marker -200 -2 106 "aw:as_summoner" "ghastSummoner"

# --- 第3波 ---
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -197 -10 103 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -210 -6 98 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -200 -16 98 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=3}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "skeleton4Summoner"

# --- 第4波 ---
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "skeleton4Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -214 -18 95 "aw:as_summoner" "skeletonWithSword3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "skeletonWithSword4Summoner"

# --- 第5波 ---