# ===== 关卡时间线控制器 =====

## --- 添加时间 | 当active.timeline=1时执行 ---
scoreboard players add @e[name=timeline,scores={active=1}] time 1

## --- 时间线 ---
execute @e[name=level,scores={background=0}] ~~~ function levels/open/timeline_before
execute @e[name=level,scores={background=1}] ~~~ function levels/open/timeline_after

execute @e[name=level,scores={background=110}] ~~~ function levels/chapter1/1_1/timeline
execute @e[name=level,scores={background=120}] ~~~ function levels/chapter1/1_2/timeline
execute @e[name=level,scores={background=130}] ~~~ function levels/chapter1/1_3/timeline
execute @e[name=level,scores={background=210}] ~~~ function levels/chapter2/2_1/timeline
execute @e[name=level,scores={background=220}] ~~~ function levels/chapter2/2_2/timeline
execute @e[name=level,scores={background=230}] ~~~ function levels/chapter2/2_3/timeline
execute @e[name=level,scores={background=310}] ~~~ function levels/chapter3/3_1/timeline
execute @e[name=level,scores={background=320}] ~~~ function levels/chapter3/3_2/timeline
execute @e[name=level,scores={background=330}] ~~~ function levels/chapter3/3_3/timeline
execute @e[name=level,scores={background=340}] ~~~ function levels/chapter3/3_4/timeline 
execute @e[name=level,scores={background=410}] ~~~ function levels/chapter4/4_1/timeline 
execute @e[name=level,scores={background=420}] ~~~ function levels/chapter4/4_2/timeline 
execute @e[name=level,scores={background=430}] ~~~ function levels/chapter4/4_3/timeline 
execute @e[name=level,scores={background=440}] ~~~ function levels/chapter4/4_4/timeline 
execute @e[name=level,scores={background=610}] ~~~ function levels/chapter6/6_1/timeline 
execute @e[name=level,scores={background=620}] ~~~ function levels/chapter6/6_2/timeline 
execute @e[name=level,scores={background=630}] ~~~ function levels/chapter6/6_3/timeline 
execute @e[name=level,scores={background=640}] ~~~ function levels/chapter6/6_4/timeline 
execute @e[name=level,scores={background=641..709}] ~~~ function levels/chapter7/7_0/timeline 
execute @e[name=level,scores={background=710}] ~~~ function levels/chapter7/7_1/timeline 
execute @e[name=level,scores={background=720}] ~~~ function levels/chapter7/7_2/timeline 
execute @e[name=level,scores={background=730}] ~~~ function levels/chapter7/7_3/timeline 
execute @e[name=level,scores={background=740}] ~~~ function levels/chapter7/7_4/timeline 
execute @e[name=level,scores={background=750}] ~~~ function levels/chapter7/7_5/timeline 

execute @e[name=level,scores={background=741}] ~~~ function levels/chapter7/7_4/timeline_lava_disappear


## --- 截取一次最大怪物数目 ---
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ function methods/get_max_monster_amount

## --- 重生点机制 ---
### 将玩家的重生点设置在respawner标记实体上
execute @e[family=respawner] ~~~ spawnpoint @a ~~~

### 当关卡未完成时，检测玩家和重生点的距离，过近则判定为玩家已死亡
### 仅当玩家数目大于等于2人时才能播报死亡消息
function methods/get_player_amount
execute @e[name=allPlayersAmount,scores={background=2..}] ~~~ execute @e[name=level,scores={temp3=0}] ~~~ execute @e[family=respawner] ~~~ execute @a[r=2,scores={isAlive=1}] ~~~ function methods/death_message_announcer
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[family=respawner] ~~~ scoreboard players add @a[r=2,scores={isAlive=1}] deathTimes 1
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[family=respawner] ~~~ scoreboard players set @a[r=2,scores={isAlive=1}] isAlive 0

### 为死亡玩家添加抗火和抗性提升X
effect @a[scores={isAlive=0}] fire_resistance 30 0 true
effect @a[scores={isAlive=0}] resistance 30 9 true


## --- 怪物延迟生成器计时 ---

### 每刻为变量time.monsterSummonDelay -= 1
scoreboard players add @e[name=monsterSummonDelay,scores={time=0..}] time -1
### 调用相关生成器并循环执行
execute @e[name=wave,scores={background=!0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0..}] ~~~ function methods/monsters/summoner_controller

## --- 测试器 ---
# execute @e[family=summoner] ~~~ say 1