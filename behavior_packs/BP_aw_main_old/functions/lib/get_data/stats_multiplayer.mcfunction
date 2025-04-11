# ===== 统计数据结算（单人） =====

# --- 获取难度 ---
function lib/get_data/difficulty

# --- 罗列结算数据 ---
tellraw @s {"rawtext":[{"translate":"§l===== 结算数据 =====\n"}]}
tellraw @s {"rawtext":[{"translate":"难度等级 | §a%%s§8/4","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=difficulty]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"试炼时长 | §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"击杀数 | §a%%s","with":{"rawtext":[{"score":{"objective":"killCount","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"死亡次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"deathCount","name":"@s"}}]}}]}

# --- 计算最快记录 ---
# 若当前值分钟数小，则直接取两值；
# 若当前值分钟数与记录相等，当前值秒数小，则取秒数值；
# 若当前值分钟数大，不取值

## 比较分钟数大小，与记录值相减
## 若 temp.playedMinute <= -1 则说明更快，将记录更改
## 若 temp.playedMinute = 0 则还应继续比对秒数
## 若 temp.playedMinute >= 1 则什么都不用做
scoreboard players operation @e[name=playedMinute] temp = @e[name=playedMinute] time
scoreboard players operation @e[name=playedSecond] temp = @e[name=playedSecond] time

execute @e[name=difficulty,scores={data=1}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute1 record
execute @e[name=difficulty,scores={data=2}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute2 record
execute @e[name=difficulty,scores={data=3}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute3 record
execute @e[name=difficulty,scores={data=4}] ~~~ scoreboard players operation @e[name=playedMinute] temp -= bestTimeMinute4 record

execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute1 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute2 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute3 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeMinute4 record = @e[name=playedMinute] time
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond1 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond2 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond3 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond4 record = @e[name=playedSecond] time

execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute1 record
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute2 record
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute3 record
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ scoreboard players operation @e[name=playedSecond] temp -= bestTimeMinute4 record
execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond1 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=2}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond2 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond3 record = @e[name=playedSecond] time
execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=playedMinute,scores={temp=0}] ~~~ execute @e[name=playedSecond,scores={temp=..-1}] ~~~ scoreboard players operation bestTimeSecond4 record = @e[name=playedSecond] time

# --- 全体玩家数据 ---

tellraw @s {"rawtext":[{"translate":"§l===== 击杀数 =====\n"}]}
execute @a ~~~ tellraw @a {"rawtext":[{"translate":"%%s §8（击杀） §f| §a%%s","with":{"rawtext":[{"selector":"@s"},{"score":{"objective":"killCount","name":"@s"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§l===== 死亡数 =====\n"}]}
execute @a ~~~ tellraw @a {"rawtext":[{"translate":"%%s §8（死亡） §f| §a%%s","with":{"rawtext":[{"selector":"@s"},{"score":{"objective":"deathCount","name":"@s"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§l===== 记录数据 =====\n"}]}
tellraw @s {"rawtext":[{"translate":"通关次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度1） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute1"}},{"score":{"objective":"record","name":"bestTimeSecond1"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度2） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute2"}},{"score":{"objective":"record","name":"bestTimeSecond2"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度3） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute3"}},{"score":{"objective":"record","name":"bestTimeSecond3"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度4） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute4"}},{"score":{"objective":"record","name":"bestTimeSecond4"}}]}}]}
