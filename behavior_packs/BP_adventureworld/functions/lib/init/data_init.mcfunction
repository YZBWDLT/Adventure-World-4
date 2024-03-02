# ===== 地图数据初始化 =====
# 本函数记录地图全体数据的初始化。数据以特定名称的标记实体（je:marker）记录。

## --- 记分板 ---

scoreboard objectives remove data
scoreboard objectives remove time
scoreboard objectives remove active
scoreboard objectives remove settings
scoreboard objectives remove temp
scoreboard objectives remove isAlive
scoreboard objectives remove deathTimes
scoreboard objectives remove inLevelArea
scoreboard objectives remove temp2
scoreboard objectives remove temp3
scoreboard objectives remove killAmount
scoreboard objectives remove isOnline

scoreboard objectives add data dummy "后台数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add settings dummy "设置数据"
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives add isAlive dummy "存活数据"
scoreboard objectives add deathTimes dummy "§l§c死亡次数"
scoreboard objectives add inLevelArea dummy "玩家所在关卡区域ID"
scoreboard objectives add temp2 dummy "临时数据2"
scoreboard objectives add temp3 dummy "临时数据3"
scoreboard objectives add hookshot dummy "绳枪数据"
scoreboard objectives add killAmount dummy "击杀数据"
scoreboard objectives add isOnline dummy "在线数据"

scoreboard players set allFailedTimes data 0
scoreboard players set @a deathTimes 0
scoreboard players set @a inLevelArea 0
scoreboard players set @a hookshot -1
scoreboard players set @a killAmount 0
scoreboard players set @a isOnline 1

## --- 标记分值 ---

kill @e[type=je:marker]

### data 后台数据
summon je:marker "level" -82 1 -2
summon je:marker "monsterAmount" -82 1 -2
summon je:marker "hookshotAmount" -82 1 -2
summon je:marker "alivePlayersAmount" -82 1 -2
summon je:marker "allPlayersAmount" -82 1 -2
summon je:marker "randomLocation" -82 1 -2
summon je:marker "randomMonster" -82 1 -2
summon je:marker "wave" -82 1 -2
summon je:marker "maxWave" -82 1 -2
summon je:marker "failedTimes" -82 1 -2
summon je:marker "isNetease" -82 1 -2

scoreboard players set @e[name=level] data 1
scoreboard players set @e[name=monsterAmount] data 0
scoreboard players set maxMonsterAmount data 0
scoreboard players set @e[name=hookshotAmount] data 0
scoreboard players set @e[name=randomLocation] data 0
scoreboard players set @e[name=randomMonster] data 0
scoreboard players set @e[name=alivePlayersAmount] data 1
scoreboard players set @e[name=allPlayersAmount] data 1
scoreboard players set @e[name=wave] data 0
scoreboard players set @e[name=maxWave] data 0
scoreboard players set @e[name=failedTimes] data 0
scoreboard players set @e[name=isNetease] data 1

### settings 设置数据
summon je:marker "developerMode" -82 1 -2
summon je:marker "arrowLimitTest" -82 1 -2
summon je:marker "potionLimitTest" -82 1 -2
summon je:marker "itemLimitTest" -82 1 -2
summon je:marker "respawnInNewWave" -82 1 -2

scoreboard players set @e[name=developerMode] settings 0
scoreboard players set @e[name=arrowLimitTest] settings 1
scoreboard players set @e[name=potionLimitTest] settings 1
scoreboard players set @e[name=itemLimitTest] settings 1
scoreboard players set @e[name=respawnInNewWave] settings 1

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
summon je:marker "levelCompleteDelay" -82 1 -2

scoreboard players set @e[name=tick] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=timeLeft] time 0
scoreboard players set @e[name=monsterRefreshLeft] time 0
scoreboard players set @e[name=soundPlayer] time 0
scoreboard players set @e[name=lavaWarningLeft] time 0
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=monsterSummonDelay] time 0
scoreboard players set @e[name=levelCompleteDelay] time 0

### active

scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=soundPlayer] active 0
scoreboard players set @e[name=levelCompleteDelay] active 0
scoreboard players set @e[name=alivePlayersAmount] active 1
scoreboard players set @e[name=allPlayersAmount] active 1

### isAlive
scoreboard players set @a isAlive 2

## --- 重生点标记 ---
summon je:marker -82 1 -2 "aw:as_respawner" "respawner"