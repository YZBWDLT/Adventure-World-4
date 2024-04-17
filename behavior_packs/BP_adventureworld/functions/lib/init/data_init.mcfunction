# ===== 地图数据初始化 =====
# 本函数记录地图全体数据的初始化。数据以特定名称的标记实体（aw:marker）记录。

execute @a ~~~ function lib/init/player_data
scoreboard players set @a isOnline 1

scoreboard players set @e[name=level] data 1
scoreboard players set @e[name=monsterAmount] data 0
scoreboard players set maxMonsterAmount data 0
scoreboard players set @e[name=hookshotAmount] data 0
scoreboard players set @e[name=randomLocation] data 0
scoreboard players set @e[name=randomMonster] data 0
scoreboard players set @e[name=alivePlayersAmount] data 1
scoreboard players set @e[name=maxPlayersAmount] data 1
scoreboard players set @e[name=wave] data 0
scoreboard players set @e[name=maxWave] data 0
scoreboard players set @e[name=failedTimes] data 0
scoreboard players set @e[name=allFailedTimes] data 0
scoreboard players set @e[name=isNetease] data 1
scoreboard players set @e[name=difficulty] data 1
scoreboard players set @e[name=realDeadPlayersAmount] data 0
scoreboard players set @e[name=achievement] data 0

scoreboard players set @e[name=developerMode] data 0
scoreboard players set @e[name=storyMode] data 1
scoreboard players set @e[name=difficultyAdder] data 0

scoreboard players set @e[name=tick] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=timeLeft] time 0
scoreboard players set @e[name=monsterRefreshLeft] time 0
scoreboard players set @e[name=soundPlayer] time 0
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=monsterSummonDelay] time 0
scoreboard players set @e[name=levelCompleteDelay] time 0

scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=soundPlayer] active 0
scoreboard players set @e[name=levelCompleteDelay] active 0
scoreboard players set @e[name=dialogue] active 0

### isAlive
scoreboard players set @a isAlive 2

scoreboard players set @a deathTimes 0
scoreboard players set @a position 0
scoreboard players set @a hookshot -1
scoreboard players set @a killAmount 0
scoreboard players set @a time 0
