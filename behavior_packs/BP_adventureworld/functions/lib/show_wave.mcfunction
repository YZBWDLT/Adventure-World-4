# ===== 显示波潮 =====

# --- 常规关卡 ---
kill @e[family=wave_name]

execute @e[name=maxWave,scores={data=1}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█"

execute @e[name=maxWave,scores={data=2}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█"
execute @e[name=maxWave,scores={data=2}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█"

execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█§7█"
execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█§7█"
execute @e[name=maxWave,scores={data=3}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§e█"

execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█§7█§7█"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█§7█§7█"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§e█§7█"
execute @e[name=maxWave,scores={data=4}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§a█§e█"

execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█§7█§7█§7█"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█§7█§7█§7█"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§e█§7█§7█"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§a█§e█§7█"
execute @e[name=maxWave,scores={data=5}] ~~~ execute @e[name=wave,scores={data=5}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§a█§a█§e█"

# --- 非常规关卡 ---
# BOSS关：2-3 3-4 （6-4不显示波数）
execute @e[name=level,scores={data=230}] ~~~ kill @e[family=wave_name]
execute @e[name=level,scores={data=230}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█§7█§c█"
execute @e[name=level,scores={data=230}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█§7█§c█"
execute @e[name=level,scores={data=230}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§e█§c█"
execute @e[name=level,scores={data=230}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§a█§6█"

execute @e[name=level,scores={data=340}] ~~~ kill @e[family=wave_name]
execute @e[name=level,scores={data=340}] ~~~ execute @e[name=wave,scores={data=1}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§e█§7█§c█§7█"
execute @e[name=level,scores={data=340}] ~~~ execute @e[name=wave,scores={data=2}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§e█§c█§7█"
execute @e[name=level,scores={data=340}] ~~~ execute @e[name=wave,scores={data=3}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§6█§7█"
execute @e[name=level,scores={data=340}] ~~~ execute @e[name=wave,scores={data=4}] ~~~ summon je:marker -83 1 -2 aw:as_wave_name "§a█§a█§b█§e█"
