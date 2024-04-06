# ===== 重生点机制 =====
# 当玩家重生后，将出生到respawner的位置上。

# --- 将玩家的重生点设置在respawner标记实体上 ---
execute @e[family=respawner] ~~~ spawnpoint @a ~~~

# --- 获取关卡进度数据 ---
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/get_data/3_digit_seperator

# --- 1 玩家在“未游玩状态”下死亡并重生 ---
# 此时做的事情：重生，并更改其存活状态为2

## 判定是否死亡
execute @e[name=level,scores={temp3=!0}] ~~~ function lib/get_data/player_is_alive

## 更改存活状态并记录死亡次数
execute @e[name=level,scores={temp3=!0}] ~~~ scoreboard players set @a[tag=!isAlive,scores={isAlive=0..1}] isAlive 2

# --- 2 玩家在“游玩状态”下死亡并重生 ---
# 此时做的事情：重生，且记录死亡次数，并更改其存活状态为0

## 判定是否死亡
execute @e[name=level,scores={temp3=0}] ~~~ function lib/get_data/player_is_alive
# execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=respawner] ~~~ tag @a[r=2] remove isAlive

## 播报死亡消息 | 仅在人数大于等于2人时播报
execute @e[name=level,scores={temp3=0}] ~~~ function lib/get_data/player_amount
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a[tag=!isAlive,scores={isAlive=1}] ~~~ function lib/death_message_announcer

execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=respawnInNewWave,scores={settings=0}] ~~~ execute @a[tag=!isAlive,scores={isAlive=1}] ~~~ tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！关卡结束后您将被释放。"}]}
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ execute @a[tag=!isAlive,scores={isAlive=1}] ~~~ tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！但不要着急，您在下一波就会被解救出来。"}]}

## 更改存活状态并记录死亡次数
execute @e[name=level,scores={temp3=0}] ~~~ scoreboard players add @a[tag=!isAlive,scores={isAlive=!0}] deathTimes 1
execute @e[name=level,scores={temp3=0}] ~~~ scoreboard players set @a[tag=!isAlive] isAlive 0

## 给予这些玩家抗性提升和抗火buff
execute @e[name=level,scores={temp3=0}] ~~~ effect @a[scores={isAlive=0}] fire_resistance 30 0 true
execute @e[name=level,scores={temp3=0}] ~~~ effect @a[scores={isAlive=0}] resistance 30 9 true

# --- 3 玩家死亡但持续不重生的情况 ---

## 游戏判定层面上，重新判断是否处于死亡状态
function lib/get_data/player_is_alive

## 当玩家持续不重生达到20刻，在玩家重生后再/kill一次
## 这样做是因为对于已经处于死亡状态的玩家，对其设置的重生点将顺延到下一次的重生，因此本次重生还是利用上一次的重生点，这可能导致很多问题
## 为解决这样的问题，再次/kill以使其出现在正确的重生点上
scoreboard players add @a[tag=!isAlive,scores={time=0..19}] time 1
kill @a[scores={time=20}]

## 当玩家重生后，设定未重生时间为0
scoreboard players set @a[tag=isAlive] time 0
