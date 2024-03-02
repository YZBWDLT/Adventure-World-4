# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -75 21 69 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -74 21 60 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -75 18 69 "aw:as_summoner" "zombie1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -75 18 70 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -75 21 60 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -75 21 68 "aw:as_summoner" "spider2Summoner"

# --- 第3波 ---

# --- 第4波 ---

# --- 第5波 ---