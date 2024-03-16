# ===== 关卡怪物设定 =====
# 利用此函数以自定义关卡的怪物设定
# 直接调用对应关卡的本函数会立即生成对应生成器

# --- 第1波 ---
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -225 -17 109 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -238 -17 91 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -231 -7 86 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -242 -16 99 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -236 -8 93 "aw:as_summoner" "magmaCubeSmallSummoner"

# --- 第2波 ---
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -231 -7 86 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -225 -17 109 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -242 -16 99 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -236 -8 93 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -224 -16 91 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -238 -8 103 "aw:as_summoner" "skeleton1Summoner"

# --- 第3波 ---
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -224 -16 91 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -231 -7 86 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -241 -16 89 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"

# --- 第4波 ---
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -233 -13 97 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -239 -6 92 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -227 -4 101 "aw:as_summoner" "ghastSummoner"

# --- 第5波 ---
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -239 -6 92 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -227 -4 101 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -236 -8 93 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -238 -8 103 "aw:as_summoner" "skeletonWithSwordSummoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -241 -16 89 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -236 -8 93 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"
