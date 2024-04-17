# ===== 地图基础初始化 =====
# 本函数记录地图全体记分板和待用marker的初始化。数据以特定名称的标记实体（aw:marker）记录。

# --- 常加载区域 ---
tickingarea add -82 1 -2 -82 1 -2 "commandSystem"
tickingarea add -55 0 -55 60 0 120 "villageArea"

# --- 记分板 ---
scoreboard objectives remove data
scoreboard objectives remove time
scoreboard objectives remove active
scoreboard objectives remove temp
scoreboard objectives remove isAlive
scoreboard objectives remove deathTimes
scoreboard objectives remove position
scoreboard objectives remove temp2
scoreboard objectives remove temp3
scoreboard objectives remove killAmount
scoreboard objectives remove isOnline

scoreboard objectives add data dummy "后台数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add temp dummy "临时数据"
scoreboard objectives add isAlive dummy "存活数据"
scoreboard objectives add deathTimes dummy "§l§c死亡次数"
scoreboard objectives add position dummy "玩家所在关卡区域ID"
scoreboard objectives add temp2 dummy "临时数据2"
scoreboard objectives add temp3 dummy "临时数据3"
scoreboard objectives add hookshot dummy "绳枪数据"
scoreboard objectives add killAmount dummy "击杀数据"
scoreboard objectives add isOnline dummy "在线数据"
## record较为特殊，存储玩家数据，不予清除
scoreboard objectives add record dummy "记录数据"

# --- 标记分值 ---

kill @e[type=aw:marker]

# data 后台数据

## 关卡进度
summon aw:marker "gameId" -82 1 -2
summon aw:marker "chapter" -82 1 -2
summon aw:marker "level" -82 1 -2
summon aw:marker "levelCompleted" -82 1 -2
summon aw:marker "wave" -82 1 -2
summon aw:marker "maxWave" -82 1 -2

## 实体数目
summon aw:marker "monsterAmount" -82 1 -2
summon aw:marker "hookshotAmount" -82 1 -2
summon aw:marker "alivePlayersAmount" -82 1 -2
summon aw:marker "maxPlayersAmount" -82 1 -2
summon aw:marker "realDeadPlayersAmount" -82 1 -2

## 失败次数
summon aw:marker "failedTimes" -82 1 -2
summon aw:marker "allFailedTimes" -82 1 -2

## 是否为网易
summon aw:marker "isNetease" -82 1 -2

## 地图数据
summon aw:marker "difficulty" -82 1 -2
summon aw:marker "difficultyAdder" -82 1 -2

## 运行模式
summon aw:marker "developerMode" -82 1 -2
summon aw:marker "storyMode" -82 1 -2

## 杂项内容
summon aw:marker "randomLocation" -82 1 -2
summon aw:marker "randomMonster" -82 1 -2
summon aw:marker "achievement" -82 1 -2


# time 时间数据

## 全局
summon aw:marker "tick" -82 1 -2

## 游玩时长
summon aw:marker "playedSecond" -82 1 -2
summon aw:marker "playedMinute" -82 1 -2

## 延迟控制
summon aw:marker "monsterSummonDelay" -82 1 -2
summon aw:marker "levelCompleteDelay" -82 1 -2

## 时间线与剧情线
summon aw:marker "timeline" -82 1 -2
summon aw:marker "dialogue" -82 1 -2

## 杂项内容
summon aw:marker "soundPlayer" -82 1 -2


## --- 重生点标记 ---
summon aw:marker -82 1 -2 "aw:as_respawner" "respawner"
summon aw:marker "playerPosition" -82 1 -2
summon aw:marker "facingPosition" -82 1 -2

# --- 赋值 ---
function lib/init/data_init