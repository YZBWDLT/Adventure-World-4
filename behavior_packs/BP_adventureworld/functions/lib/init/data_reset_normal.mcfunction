# ===== 地图数据重置 =====
# 本函数仅用于添加和重置一般性的地图数据，包括：地图常加载区域、地图记分板、地图标记实体

# --- 常加载区域 ---
tickingarea add -82 1 -2 -82 1 -2 "commandSystem"
tickingarea add -55 0 -55 60 0 120 "villageArea"
tickingarea add -64 0 127 -128 0 -64 "gamingArea1"
tickingarea add -129 0 127 -256 0 -64 "gamingArea2"

# --- 记分板 ---
## record较为特殊，存储记录性的数据，不清除

scoreboard objectives remove active
scoreboard objectives remove data
scoreboard objectives remove time
scoreboard objectives remove temp
scoreboard objectives remove temp2
scoreboard objectives remove temp3

scoreboard objectives remove isAlive
scoreboard objectives remove deathTimes
scoreboard objectives remove position
scoreboard objectives remove killAmount
scoreboard objectives remove isOnline
scoreboard objectives remove hookshot

scoreboard objectives add active dummy "激活数据"
scoreboard objectives add data dummy "后台数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives add temp2 dummy "临时数据2"
scoreboard objectives add temp3 dummy "临时数据3"

scoreboard objectives add isAlive dummy "存活数据"
scoreboard objectives add deathTimes dummy "死亡次数"
scoreboard objectives add position dummy "玩家所在关卡区域ID"
scoreboard objectives add hookshot dummy "绳枪数据"
scoreboard objectives add killAmount dummy "击杀数据"
scoreboard objectives add isOnline dummy "在线数据"

scoreboard objectives add record dummy "记录数据"

# --- 标记重置 ---

## 重置所有标记实体
kill @e[type=aw:marker]

## 非记分板型的实用标记
summon aw:marker -82 1 -2 "aw:as_respawner" "respawner"
summon aw:marker "playerPosition" -82 1 -2
summon aw:marker "facingPosition" -82 1 -2

## 记分板型标记（data记分板）
### 关卡进度
summon aw:marker "gameId" -82 1 -2
summon aw:marker "chapter" -82 1 -2
summon aw:marker "level" -82 1 -2
summon aw:marker "levelCompleted" -82 1 -2
summon aw:marker "wave" -82 1 -2
summon aw:marker "maxWave" -82 1 -2
### 实体数目
summon aw:marker "monsterAmount" -82 1 -2
summon aw:marker "hookshotAmount" -82 1 -2
summon aw:marker "alivePlayersAmount" -82 1 -2
summon aw:marker "maxPlayersAmount" -82 1 -2
summon aw:marker "realDeadPlayersAmount" -82 1 -2
summon aw:marker "arrowAmount" -82 1 -2
### 失败次数
summon aw:marker "failedTimes" -82 1 -2
summon aw:marker "allFailedTimes" -82 1 -2
### 难度
summon aw:marker "difficulty" -82 1 -2
summon aw:marker "difficultyAdder" -82 1 -2
### 其他
summon aw:marker "randomLocation" -82 1 -2
summon aw:marker "randomMonster" -82 1 -2
summon aw:marker "achievement" -82 1 -2
summon aw:marker "isNetease" -82 1 -2
summon aw:marker "developerMode" -82 1 -2
summon aw:marker "storyMode" -82 1 -2

## 记分板型标记（time&active记分板）
### 全局
summon aw:marker "tick" -82 1 -2
### 游玩时长
summon aw:marker "playedSecond" -82 1 -2
summon aw:marker "playedMinute" -82 1 -2
### 延迟控制
summon aw:marker "monsterSummonDelay" -82 1 -2
summon aw:marker "levelCompleteDelay" -82 1 -2
### 时间线与剧情线
summon aw:marker "timeline" -82 1 -2
summon aw:marker "dialogue" -82 1 -2
### 其他
summon aw:marker "soundPlayer" -82 1 -2

# --- 变量值重置 ---

## 玩家值
scoreboard players set @a isOnline 1
scoreboard players set @a isAlive 2
scoreboard players set @a deathTimes 0
scoreboard players set @a position 0
scoreboard players set @a hookshot -1
scoreboard players set @a killAmount 0
scoreboard players set @a time 0
tag @a remove potionUsed
tag @a remove cheated

## 常规变量值
scoreboard players set @e[name=monsterAmount] data 0
scoreboard players set @e[name=hookshotAmount] data 0
scoreboard players set @e[name=alivePlayersAmount] data 1
scoreboard players set @e[name=maxPlayersAmount] data 1
scoreboard players set @e[name=realDeadPlayersAmount] data 0
scoreboard players set @e[name=arrowAmount] data 0
scoreboard players set maxMonsterAmount data 0

scoreboard players set @e[name=gameId] data 1
scoreboard players set @e[name=chapter] data 0
scoreboard players set @e[name=level] data 0
scoreboard players set @e[name=levelCompleted] data 1
scoreboard players set @e[name=wave] data 0
scoreboard players set @e[name=maxWave] data 0

scoreboard players set @e[name=developerMode] data 0
scoreboard players set @e[name=randomLocation] data 0
scoreboard players set @e[name=randomMonster] data 0
scoreboard players set @e[name=failedTimes] data 0
scoreboard players set @e[name=allFailedTimes] data 0
scoreboard players set @e[name=isNetease] data 1
scoreboard players set @e[name=difficulty] data 1
scoreboard players set @e[name=difficultyAdder] data 0
scoreboard players set @e[name=achievement] data 0
scoreboard players set @e[name=storyMode] data 1

scoreboard players set @e[name=tick] time 0
scoreboard players set @e[name=playedSecond] time 0
scoreboard players set @e[name=playedMinute] time 0
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=dialogue] time 0
scoreboard players set @e[name=monsterSummonDelay] time 0
scoreboard players set @e[name=levelCompleteDelay] time 0
scoreboard players set @e[name=soundPlayer] time 0

scoreboard players set @e[name=dialogue] active 0
scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=levelCompleteDelay] active 0
scoreboard players set @e[name=monsterSummonDelay] active 0
scoreboard players set @e[name=soundPlayer] active 0

# --- 获取是否为网易 ---
function lib/get_data/using_client
