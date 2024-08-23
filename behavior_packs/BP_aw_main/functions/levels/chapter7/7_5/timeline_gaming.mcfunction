# ===== 时间线 =====

# --- 第1波时间线 ---
execute @e[name=wave,scores={data=1}] ~~~ function levels/chapter7/7_5/waves/timeline_wave_1

# --- 第2波时间线 ---

## 刚开始时的初始化
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=timeline,scores={active=1..2}] ~~~ function levels/chapter7/7_5/waves/start_wave_2_1

## 一阶段时间线
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=timeline,scores={active=3}] ~~~ execute @e[name=tick,scores={time=8}] ~~~ function levels/chapter7/7_5/waves/timeline_wave_2_1

## 二阶段初始化
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=timeline,scores={active=3}] ~~~ execute @e[family=evoker,scores={temp2=1}] ~~~ function levels/chapter7/7_5/waves/start_wave_2_2
execute @e[name=wave,scores={data=2}] ~~~ scoreboard players add @e[name=timeline,scores={active=4,time=0..19}] time 1
### 火球在1s后爆炸，并对附近的玩家造成伤害
execute @e[name=timeline,scores={active=4,time=19}] ~~~ execute @e[type=aw:fireball] ~~~ particle minecraft:huge_explosion_emitter ~~~
execute @e[name=timeline,scores={active=4,time=19}] ~~~ execute @e[type=aw:fireball] ~~~ execute @a ~~~ playsound random.explode @s ~~~ 1 0.75
execute @e[name=timeline,scores={active=4,time=19}] ~~~ execute @e[type=aw:fireball] ~~~ damage @e[r=3] 15 entity_explosion
execute @e[name=timeline,scores={active=4,time=19}] ~~~ kill @e[type=aw:fireball]
### 炸出第二阶段的地形
execute @e[name=timeline,scores={active=4,time=19}] ~~~ structure load 7_5_phase2 -246 -54 23

## 二阶段时间线 | 共流逝20刻s
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=timeline,scores={active=4}] ~~~ execute @e[name=tick,scores={time=8}] ~~~ function levels/chapter7/7_5/waves/timeline_wave_2_2

# --- 胜利判定 ---
# 当Boss被击杀后，立即结束

## execute unless entity @e[family=evoker] run kill @e[family=monster]
execute @e[name=timeline,scores={active=4}] ~~~ summon aw:marker haveNoBoss -225 -48 44
execute @e[name=timeline,scores={active=4}] ~~~ execute @e[family=evoker] ~~~ kill @e[name=haveNoBoss]
execute @e[name=timeline,scores={active=4}] ~~~ execute @e[name=haveNoBoss] ~~~ kill @e[family=monster]
