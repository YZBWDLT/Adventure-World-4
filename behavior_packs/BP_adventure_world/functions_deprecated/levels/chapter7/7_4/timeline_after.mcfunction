# ===== 游戏后的时间线 =====
# 仅当关卡结束后执行

# --- 状态3时间线激活 ---
scoreboard players add @e[name=timeline,scores={active=3}] time 1

# --- 岩浆消失 ---
execute @e[name=timeline,scores={active=1,time=40}] ~~~ fill -224 -27 111 -244 -27 85 air[] replace lava[]
execute @e[name=timeline,scores={active=1,time=80}] ~~~ fill -224 -28 111 -244 -28 85 air[] replace lava[]
execute @e[name=timeline,scores={active=1,time=120}] ~~~ fill -224 -29 111 -244 -29 85 air[] replace lava[]

## 时间结束后，停止时间线流逝
execute @e[name=timeline,scores={active=1,time=!0..121}] ~~~ function lib/states/timeline/enable_without_flowing

# --- 检测玩家跳入坑中 ---
execute @e[name=timeline,scores={active=!3}] ~~~ execute @a[x=-235,y=-63,z=97,r=5] ~~~ function lib/states/timeline/enable
execute @e[name=timeline,scores={active=!3}] ~~~ execute @a[x=-235,y=-63,z=97,r=5] ~~~ scoreboard players set @e[name=timeline] active 3

## 启用后立刻给所有玩家施加失明
execute @e[name=timeline,scores={active=3,time=1}] ~~~ effect @a blindness 30 0 true

## 60刻后黑屏
execute @e[name=timeline,scores={active=3,time=60}] ~~~ function lib/black_screen/invisibility

## 120刻后，进入7-5
## 目前是直接跳到结束界面
execute @e[name=timeline,scores={active=3,time=120}] ~~~ function levels/chapter7/7_5/start_level
