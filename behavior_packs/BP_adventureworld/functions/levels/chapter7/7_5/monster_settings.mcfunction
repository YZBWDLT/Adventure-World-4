# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -232 -49 37 "aw:as_summoner" "zombie1ShieldSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -231 -49 49 "aw:as_summoner" "zombie1ShieldSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -218 -49 51 "aw:as_summoner" "zombie1ShieldSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -218 -49 37 "aw:as_summoner" "zombie1ShieldSummoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -225 -48 44 "aw:as_summoner" "evokerSummoner"

# --- 第3波 ---

# --- 第4波 ---

# --- 第5波 ---