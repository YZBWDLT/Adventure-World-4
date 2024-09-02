# ===== 计算最快记录 =====
# 仅当未作弊情况下记录

# 若当前值分钟数小，则直接取两值；
# 若当前值分钟数与记录相等，当前值秒数小，则取秒数值；
# 若当前值分钟数大，不取值

# --- 获取当前的游玩时长 ---
scoreboard players operation @e[name=playedMinute] temp = @e[name=playedMinute] time
scoreboard players operation @e[name=playedSecond] temp = @e[name=playedSecond] time

# --- 比较分钟数大小 ---
execute @e[name=difficulty,scores={data=1}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute1 record
execute @e[name=difficulty,scores={data=2}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute2 record
execute @e[name=difficulty,scores={data=3}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute3 record
execute @e[name=difficulty,scores={data=4}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute4 record

# --- 若 temp.playedMinute <= -1 则说明更快，将记录更改 ---
## 更改分钟数
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute1 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute2 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute3 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute4 record = @e[name=playedMinute] time
## 更改秒数
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond1 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond2 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond3 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond4 record = @e[name=playedSecond] time

# --- 若 temp.playedMinute = 0 则还应继续比对秒数 ---
## 若分钟数相等时，比对秒数
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute1 record
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute2 record
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute3 record
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute4 record
# 更改秒数
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond1 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond2 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond3 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond4 record = @e[name=playedSecond] time

