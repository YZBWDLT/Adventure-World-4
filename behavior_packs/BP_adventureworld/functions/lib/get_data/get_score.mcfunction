# ===== 结算地图完成后的分数 =====

# --- 初始化 ---
scoreboard players set @e[name=score] data 0

# --- 获取一次地图难度 ---
function lib/get_data/difficulty

# --- 难度加分 ---
## 1    2   3   4
## +0   +10  +20 +40

execute @e[name=difficulty,scores={data=1}] ~~~ scoreboard players add @e[name=score] data 0
execute @e[name=difficulty,scores={data=2}] ~~~ scoreboard players add @e[name=score] data 10
execute @e[name=difficulty,scores={data=3}] ~~~ scoreboard players add @e[name=score] data 20
execute @e[name=difficulty,scores={data=4}] ~~~ scoreboard players add @e[name=score] data 40

# --- 时长加分（单位：分钟） ---
## 60    60-75   75-90   90-105   105-120   120-135  135-150   150~165
## +40   +35     +30     +25      +20       +15      +10       +5

execute @e[name=playedMinute,scores={time=..60}] ~~~ scoreboard players add @e[name=score] data 40
execute @e[name=playedMinute,scores={time=61..75}] ~~~ scoreboard players add @e[name=score] data 35
execute @e[name=playedMinute,scores={time=76..90}] ~~~ scoreboard players add @e[name=score] data 30
execute @e[name=playedMinute,scores={time=91..105}] ~~~ scoreboard players add @e[name=score] data 25
execute @e[name=playedMinute,scores={time=106..120}] ~~~ scoreboard players add @e[name=score] data 20
execute @e[name=playedMinute,scores={time=121..135}] ~~~ scoreboard players add @e[name=score] data 15
execute @e[name=playedMinute,scores={time=136..150}] ~~~ scoreboard players add @e[name=score] data 10
execute @e[name=playedMinute,scores={time=151..165}] ~~~ scoreboard players add @e[name=score] data 5

# --- 死亡加分 ---
## 0   1   2~3   4~6   7~10   11~15
## +60 +50 +40   +30   +20    +10

execute @a[c=1,scores={deathTimes=0}] ~~~ scoreboard players add @e[name=score] data 60
execute @a[c=1,scores={deathTimes=1}] ~~~ scoreboard players add @e[name=score] data 50
execute @a[c=1,scores={deathTimes=2..3}] ~~~ scoreboard players add @e[name=score] data 40
execute @a[c=1,scores={deathTimes=4..6}] ~~~ scoreboard players add @e[name=score] data 30
execute @a[c=1,scores={deathTimes=7..10}] ~~~ scoreboard players add @e[name=score] data 20
execute @a[c=1,scores={deathTimes=11..15}] ~~~ scoreboard players add @e[name=score] data 10

# --- 使用药水加分 ---
## 使用过   未使用过
## +0       +10
execute @a[c=1,tag=!potionUsed] ~~~ scoreboard players add @e[name=score] data 10

# --- 作弊标记 ---
## 作弊过立即标记分数为-1
execute @a[tag=cheated] ~~~ scoreboard players set @e[name=score] data -1
