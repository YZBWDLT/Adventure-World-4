# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -188 -21 26 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -187 -21 33 "aw:as_summoner" "spider2Summoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -197 -21 34 "aw:as_summoner" "drowned1Summoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -193 -21 24 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -193 -21 35 "aw:as_summoner" "drowned2Summoner"

# --- 第3波 ---

# --- 第4波 ---

# --- 第5波 ---