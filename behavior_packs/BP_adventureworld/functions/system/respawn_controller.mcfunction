# ===== 重生点机制 =====
# 当玩家重生后，将出生到respawner的位置上。重生可能出现的情况：
# 1. 玩家在“未游玩状态”下死亡并重生 -> 重生，并更改其存活状态为2
# 2. 玩家在“游玩状态”下死亡并重生 -> 重生，且记录死亡次数，并更改其存活状态为0，给予这些玩家抗性提升和抗火buff

# --- 将玩家的重生点设置在respawner标记实体上 ---
execute @e[family=respawner] ~~~ spawnpoint @a ~~~

# --- 获取关卡进度数据 ---
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/get_data/3_digit_seperator

# --- 第一种情况 ---
execute @e[name=level,scores={temp3=!0}] ~~~ execute @e[family=respawner] ~~~ scoreboard players set @a[r=2,scores={isAlive=0..1}] isAlive 2

# --- 第二种情况 ---
# 仅当游戏正式开始后才能判定。可以发现只有第二种情况才导致特殊功能。
# 当玩家距离respawner过近的时候证明其已死亡

## 播报死亡信息 | 仅在人数大于等于2人时播报
execute @e[name=level,scores={temp3=0}] ~~~ function lib/get_data/player_amount
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[family=respawner] ~~~ execute @a[r=2,scores={isAlive=1}] ~~~ function lib/death_message_announcer

execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=respawnInNewWave,scores={settings=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[family=respawner] ~~~ execute @a[r=2,scores={isAlive=1}] ~~~ tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！关卡结束后您将被释放。"}]}
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[family=respawner] ~~~ execute @a[r=2,scores={isAlive=1}] ~~~ tellraw @s {"rawtext":[{"translate":"§7您在刚刚的试炼中倒下了！但不要着急，您在下一波就会被解救出来。"}]}

## 距离过近则判定为玩家已死亡
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[family=respawner] ~~~ scoreboard players add @a[r=2,scores={isAlive=1}] deathTimes 1
execute @e[name=level,scores={temp3=0}] ~~~ execute @e[family=respawner] ~~~ scoreboard players set @a[r=2,scores={isAlive=1}] isAlive 0

# --- 为死亡玩家添加buff ---
# 例如防火等，防止玩家在重生点内死掉 ={
# 仅当在关卡中时执行
execute @e[name=level,scores={temp3=0}] ~~~ effect @a[scores={isAlive=0}] fire_resistance 30 0 true
execute @e[name=level,scores={temp3=0}] ~~~ effect @a[scores={isAlive=0}] resistance 30 9 true
