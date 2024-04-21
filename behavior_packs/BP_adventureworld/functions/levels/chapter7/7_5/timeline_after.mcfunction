# ===== 时间线（完成关卡后） =====

# --- 状态3时间线激活 ---
scoreboard players add @e[name=timeline,scores={active=3}] time 1

# --- 敲碎中间3*3砖块 ---
execute @e[name=timeline,scores={active=1,time=60}] ~~~ fill -224 -49 43 -226 -49 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=80}] ~~~ fill -224 -50 43 -226 -50 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=100}] ~~~ fill -224 -51 43 -226 -51 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=120}] ~~~ fill -224 -52 43 -226 -52 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=140}] ~~~ fill -224 -53 43 -226 -53 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=160}] ~~~ fill -224 -54 43 -226 -54 45 air [] destroy
execute @e[name=timeline,scores={active=1,time=60..160}] ~~~ kill @e[type=item]
execute @e[name=timeline,scores={active=1,time=!0..161}] ~~~ function lib/states/timeline/enable_without_flowing

# --- 检测玩家跳入坑中 ---
execute @e[name=timeline,scores={active=!3}] ~~~ execute @a[x=-225,y=-62,z=44,r=3] ~~~ function lib/states/timeline/enable
execute @e[name=timeline,scores={active=!3}] ~~~ execute @a[x=-225,y=-62,z=44,r=3] ~~~ scoreboard players set @e[name=timeline] active 3

## 启用后立刻给所有玩家施加失明
execute @e[name=timeline,scores={active=3,time=1}] ~~~ effect @a blindness 30 0 true

## 60刻后黑屏
execute @e[name=timeline,scores={active=3,time=60}] ~~~ function lib/black_screen/invisibility

## 120刻后，跳到结束界面
execute @e[name=timeline,scores={active=3,time=120}] ~~~ execute @e[name=storyMode,scores={data=0}] ~~~ function levels/end/stage_3/start_from_combat_mode
execute @e[name=timeline,scores={active=3,time=120}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ function levels/end/stage_1/start

