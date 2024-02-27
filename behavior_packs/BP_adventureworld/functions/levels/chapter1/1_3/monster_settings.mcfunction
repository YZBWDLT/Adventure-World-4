# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -136 18 19 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -136 20 33 "aw:as_summoner" "husk1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -124 16 19 "aw:as_summoner" "husk1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -131 13 27 "aw:as_summoner" "husk1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -136 11 22 "aw:as_summoner" "husk1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -131 11 18 "aw:as_summoner" "huskBaby1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -136 18 20 "aw:as_summoner" "skeleton1Summoner"

# --- 第3波 ---

# --- 第4波 ---

# --- 第5波 ---