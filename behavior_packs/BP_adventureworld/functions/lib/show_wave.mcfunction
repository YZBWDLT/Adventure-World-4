# ===== 显示波潮 =====
# ⚀ - BOSS预告
# ⚁ - 普通波预告
# ⚂ - BOSS进行中
# ⚃ - 普通波进行中
# ⚄ - BOSS结束
# ⚅ - 普通波结束

# --- 常规关卡 ---
kill @e[family=wave_name]

execute @e[name=maxWave,scores={data=1}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃"

execute @e[name=maxWave,scores={data=2}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁"
execute @e[name=maxWave,scores={data=2}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃"

execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁§e⚁"
execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃§e⚁"
execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§b⚃"

execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁§e⚁§e⚁"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃§e⚁§e⚁"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§b⚃§e⚁"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§a⚅§b⚃"

execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁§e⚁§e⚁§e⚁"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃§e⚁§e⚁§e⚁"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§b⚃§e⚁§e⚁"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§a⚅§b⚃§e⚁"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§a⚅§a⚅§b⚃"

# --- 非常规关卡 ---
# BOSS关：2-3 3-4 （6-4不显示波数）
execute @e[name=gameId,scores={data=230}] ~~~ kill @e[family=wave_name]
execute @e[name=gameId,scores={data=230}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁§e⚀"
execute @e[name=gameId,scores={data=230}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃§e⚀"
execute @e[name=gameId,scores={data=230}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§b⚂"

execute @e[name=gameId,scores={data=340}] ~~~ kill @e[family=wave_name]
execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚁§e⚀§e⚁"
execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚃§e⚀§e⚁"
execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§b⚂§e⚁"
execute @e[name=gameId,scores={data=340}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚅§a⚄§b⚃"

execute @e[name=gameId,scores={data=740}] ~~~ kill @e[family=wave_name]
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚀§e⚁§e⚀§e⚀"
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚂§e⚁§e⚀§e⚀"
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚄§b⚃§e⚀§e⚀"
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚄§a⚅§b⚂§e⚀"
execute @e[name=gameId,scores={data=740}] ~~~ execute @e[name=wave,scores={data=5}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§a⚄§a⚅§a⚄§b⚂"

execute @e[name=gameId,scores={data=750}] ~~~ kill @e[family=wave_name]
execute @e[name=gameId,scores={data=750}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§b⚃§e⚀"
execute @e[name=gameId,scores={data=750}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon aw:marker -83 1 -2 aw:as_wave_name "§a⚅§b⚂"
