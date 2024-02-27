# ===== 关卡时间线控制器 =====

## --- 添加时间 | 当active.timeline=1时执行 ---
scoreboard players add @e[name=timeline,scores={active=1}] time 1

## --- 时间线 ---
execute @e[name=level,scores={data=1}] ~~~ function levels/open/timeline_before
execute @e[name=level,scores={data=2}] ~~~ function levels/open/timeline_after

execute @e[name=level,scores={data=320}] ~~~ function levels/chapter3/3_2/timeline
execute @e[name=level,scores={data=340}] ~~~ function levels/chapter3/3_4/timeline 
execute @e[name=level,scores={data=410}] ~~~ function levels/chapter4/4_1/timeline 
execute @e[name=level,scores={data=440}] ~~~ function levels/chapter4/4_4/timeline 
execute @e[name=level,scores={data=640}] ~~~ function levels/chapter6/6_4/timeline 
execute @e[name=level,scores={data=641..709}] ~~~ function levels/chapter7/7_0/timeline 
execute @e[name=level,scores={data=720}] ~~~ function levels/chapter7/7_2/timeline 
execute @e[name=level,scores={data=740..741}] ~~~ function levels/chapter7/7_4/timeline 
execute @e[name=level,scores={data=750}] ~~~ function levels/chapter7/7_5/timeline 
