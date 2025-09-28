# ===== 技能时间线：岩浆上涨 =====

# [0s~4s] 岩浆上涨前的音效
    execute if score temp.skillCd time matches -4..0 as @a at @s run playsound bucket.fill_lava @s ~~~ 1 2
# [5s] 岩浆开始上涨，不同阶段加载不同结构
    execute if score temp.skillCd time matches -5 if score temp.stage data matches 1 run structure load aw:7_5_phase1_lava -246 -54 23 0_degrees none layer_by_layer 3.00
    execute if score temp.skillCd time matches -5 if score temp.stage data matches 2 run structure load aw:7_5_phase2_lava -246 -54 23 0_degrees none layer_by_layer 3.00
# [5s~7s] 岩浆上涨时的音效
    execute if score temp.skillCd time matches -7..-5 as @a at @s run playsound bucket.empty_lava @s ~~~ 1 0.75
# [9s] 房间恢复正常，不同阶段加载不同结构
    execute if score temp.skillCd time matches -9 if score temp.stage data matches 1 run structure load aw:7_5_phase1 -246 -54 23
    execute if score temp.skillCd time matches -9 if score temp.stage data matches 2 run structure load aw:7_5_phase2 -246 -54 23
