# ===== 地图数据初始化 =====
# 本函数记录地图全体数据的初始化。数据以特定名称的标记实体（je:marker）记录。

## --- 记分板 ---

scoreboard objectives remove background
scoreboard objectives remove stats
scoreboard objectives remove time
scoreboard objectives remove active
scoreboard objectives remove crosshair

scoreboard objectives add background dummy "后台数据"
scoreboard objectives add stats dummy "统计数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add crosshair dummy "准心数据"

scoreboard players set allFailedTimes stats 0
scoreboard players set @a crosshair 0

## --- 标记分值 ---

kill @e[type=je:marker]

### (just name)
summon je:marker "readyToStart" -82 1 -2

### background 后台数据
summon je:marker "level" -82 1 -2
summon je:marker "monsterAmount" -82 1 -2
summon je:marker "hookshotAmount" -82 1 -2
summon je:marker "alivePlayersAmount" -82 1 -2
summon je:marker "randomLocation" -82 1 -2
summon je:marker "randomMonster" -82 1 -2

scoreboard players set @e[name=level] background 0
scoreboard players set @e[name=monsterAmount] background 0
scoreboard players set @e[name=hookshotAmount] background 0
scoreboard players set @e[name=randomLocation] background 0
scoreboard players set @e[name=randomMonster] background 0
scoreboard players set @e[name=alivePlayersAmount] background 1

### stats 统计数据
summon je:marker "failedTimes" -82 1 -2
summon je:marker "isNetease" -82 1 -2

scoreboard players set @e[name=failedTimes] stats 0
scoreboard players set @e[name=isNetease] stats 1

### time
summon je:marker "tick" -82 1 -2
summon je:marker "playedSecond" -82 1 -2
summon je:marker "playedMinute" -82 1 -2
summon je:marker "saturationSecond" -82 1 -2
summon je:marker "gameStartingTick" -82 1 -2
summon je:marker "timeLeft" -82 1 -2
summon je:marker "monsterRefreshLeft" -82 1 -2
summon je:marker "soundAnvilTicker" -82 1 -2
summon je:marker "soundBeaconTicker" -82 1 -2
summon je:marker "lavaWarningLeft" -82 1 -2
summon je:marker "timeline" -82 1 -2

scoreboard players set @e[name=tick] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=saturationSecond] time 0
scoreboard players set @e[name=gameStartingTick] time 0
scoreboard players set @e[name=timeLeft] time 0
scoreboard players set @e[name=monsterRefreshLeft] time 0
scoreboard players set @e[name=soundAnvilTicker] time 0
scoreboard players set @e[name=soundBeaconTicker] time 0
scoreboard players set @e[name=lavaWarningLeft] time 0
scoreboard players set @e[name=timeline] time 0

### active
summon je:marker "developerMode" -82 1 -2
summon je:marker "levelTesting" -82 1 -2
summon je:marker "arrowTraversing" -82 1 -2
summon je:marker "bonusTraversing" -82 1 -2
summon je:marker "potionTraversing" -82 1 -2

scoreboard players set @e[name=gameStartingTick] active 0
scoreboard players set @e[name=soundAnvilTicker] active 0
scoreboard players set @e[name=soundBeaconTicker] active 0
scoreboard players set @e[name=developerMode] active 0
scoreboard players set @e[name=levelTesting] active 0
scoreboard players set @e[name=arrowTraversing] active 0
scoreboard players set @e[name=bonusTraversing] active 0
scoreboard players set @e[name=potionTraversing] active 0
scoreboard players set @e[name=timeline] active 0
