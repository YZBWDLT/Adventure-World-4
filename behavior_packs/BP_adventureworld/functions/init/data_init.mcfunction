# ===== 地图数据初始化 =====
# 本函数记录地图全体数据的初始化。数据以特定名称的标记实体（je:marker）记录。

## --- 记分板 ---

scoreboard objectives remove background
scoreboard objectives remove stats
scoreboard objectives remove time
scoreboard objectives remove active
scoreboard objectives remove crosshair
scoreboard objectives remove settings
scoreboard objectives remove temp
scoreboard objectives remove isAlive
scoreboard objectives remove isHoldingHelmet
scoreboard objectives remove isHoldingBoots

scoreboard objectives add background dummy "后台数据"
scoreboard objectives add stats dummy "统计数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add crosshair dummy "准心数据"
scoreboard objectives add settings dummy "设置数据"
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives add isAlive dummy "存活数据"
scoreboard objectives add isHoldingHelmet dummy "手持头盔"
scoreboard objectives add isHoldingBoots dummy "手持靴子"

scoreboard players set allFailedTimes stats 0
scoreboard players set @a crosshair 0
scoreboard players set @a isHoldingHelmet 0
scoreboard players set @a isHoldingBoots 0

## --- 标记分值 ---

kill @e[type=je:marker]

### background 后台数据
summon je:marker "level" -82 1 -2
summon je:marker "monsterAmount" -82 1 -2
summon je:marker "hookshotAmount" -82 1 -2
summon je:marker "alivePlayersAmount" -82 1 -2
summon je:marker "allPlayersAmount" -82 1 -2
summon je:marker "randomLocation" -82 1 -2
summon je:marker "randomMonster" -82 1 -2
summon je:marker "wave" -82 1 -2
summon je:marker "lastWaveCompleted" -82 1 -2
summon je:marker "maxWave" -82 1 -2
summon je:marker "isCompleted" -82 1 -2

scoreboard players set @e[name=level] background 0
scoreboard players set @e[name=monsterAmount] background 0
scoreboard players set @e[name=hookshotAmount] background 0
scoreboard players set @e[name=randomLocation] background 0
scoreboard players set @e[name=randomMonster] background 0
scoreboard players set @e[name=alivePlayersAmount] background 1
scoreboard players set @e[name=allPlayersAmount] background 1
scoreboard players set @e[name=wave] background 0
scoreboard players set @e[name=lastWaveCompleted] background 0
scoreboard players set @e[name=maxWave] background 0
scoreboard players set @e[name=isCompleted] background 0

### settings 设置数据
summon je:marker "developerMode" -82 1 -2
summon je:marker "isNetease" -82 1 -2

scoreboard players set @e[name=developerMode] settings 0
scoreboard players set @e[name=isNetease] settings 1

### stats 统计数据
summon je:marker "failedTimes" -82 1 -2

scoreboard players set @e[name=failedTimes] stats 0

### time
summon je:marker "tick" -82 1 -2
summon je:marker "playedSecond" -82 1 -2
summon je:marker "playedMinute" -82 1 -2
summon je:marker "timeLeft" -82 1 -2
summon je:marker "monsterRefreshLeft" -82 1 -2
summon je:marker "soundPlayer" -82 1 -2
summon je:marker "lavaWarningLeft" -82 1 -2
summon je:marker "timeline" -82 1 -2
summon je:marker "monsterSummonDelay" -82 1 -2

scoreboard players set @e[name=tick] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=timeLeft] time 0
scoreboard players set @e[name=monsterRefreshLeft] time 0
scoreboard players set @e[name=soundPlayer] time 0
scoreboard players set @e[name=lavaWarningLeft] time 0
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=monsterSummonDelay] time 0

### active

scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=soundPlayer] active 0

### isAlive
scoreboard players set @a isAlive 2

## --- 重生点标记 ---
summon je:marker -82 1 -2 "aw:as_respawner" "respawner"