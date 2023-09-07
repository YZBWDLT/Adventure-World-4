# ===== 关卡时间线控制器 =====

## --- 添加时间 | 当active.timeline=1时执行 ---
scoreboard players add @e[name=timeline,scores={active=1}] time 1

function methods/entity_amount_tester

execute @e[name=level,scores={background=1}] ~~~ execute @e[name=timeline,scores={active=1}] ~~~ function levels/open/timeline
execute @e[name=level,scores={background=110..119}] ~~~ function levels/1_1/level_tester
execute @e[name=level,scores={background=120..129}] ~~~ function levels/1_2/level_tester
execute @e[name=level,scores={background=130..139}] ~~~ function levels/1_3/level_tester
execute @e[name=level,scores={background=210..219}] ~~~ function levels/2_1/level_tester
execute @e[name=level,scores={background=220..229}] ~~~ function levels/2_2/level_tester
execute @e[name=level,scores={background=230..239}] ~~~ function levels/2_3/level_tester
execute @e[name=level,scores={background=310..319}] ~~~ function levels/3_1/level_tester
execute @e[name=level,scores={background=320..329}] ~~~ function levels/3_2/level_tester
execute @e[name=level,scores={background=330..339}] ~~~ function levels/3_3/level_tester
execute @e[name=level,scores={background=340..349}] ~~~ function levels/3_4/level_tester
execute @e[name=level,scores={background=410..419}] ~~~ function levels/4_1/level_tester
execute @e[name=level,scores={background=420..429}] ~~~ function levels/4_2/level_tester
execute @e[name=level,scores={background=430..439}] ~~~ function levels/4_3/level_tester
execute @e[name=level,scores={background=440..449}] ~~~ function levels/4_4/level_tester
execute @e[name=level,scores={background=610..619}] ~~~ function levels/6_1/level_tester
execute @e[name=level,scores={background=620..629}] ~~~ function levels/6_2/level_tester
execute @e[name=level,scores={background=630..639}] ~~~ function levels/6_3/level_tester
execute @e[name=level,scores={background=640}] ~~~ function levels/6_4/level_tester
execute @e[name=level,scores={background=641..709}] ~~~ function levels/7_0/level_tester
execute @e[name=level,scores={background=710..719}] ~~~ function levels/7_1/level_tester
execute @e[name=level,scores={background=720..729}] ~~~ function levels/7_2/level_tester
execute @e[name=level,scores={background=730..739}] ~~~ function levels/7_3/level_tester
execute @e[name=level,scores={background=740..749}] ~~~ function levels/7_4/level_tester
execute @e[name=level,scores={background=750..759}] ~~~ function levels/7_5/level_tester
