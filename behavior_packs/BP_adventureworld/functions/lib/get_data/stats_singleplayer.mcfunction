# ===== 统计数据结算（单人） =====

# --- 获取难度 ---
function lib/get_data/difficulty

# --- 罗列结算数据 ---
tellraw @s {"rawtext":[{"translate":"§l===== 结算数据 =====\n"}]}
tellraw @s {"rawtext":[{"translate":"难度等级 | §a%%s§8/4","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=difficulty]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"试炼时长 | §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"击杀数 | §a%%s","with":{"rawtext":[{"score":{"objective":"killAmount","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"死亡次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"deathTimes","name":"@s"}}]}}]}
tellraw @s[tag=potionUsed] {"rawtext":[{"translate":"是否使用过药水 | §a是"}]}
tellraw @s[tag=!potionUsed] {"rawtext":[{"translate":"是否使用过药水 | §a否"}]}

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

# --- 结算评价 ---
scoreboard players set @a temp 0
## 难度加分
## 1    2   3   4
## +0   +10  +20 +30
execute @e[name=difficulty,scores={data=1}] ~~~ scoreboard players add @a temp 0
execute @e[name=difficulty,scores={data=2}] ~~~ scoreboard players add @a temp 10
execute @e[name=difficulty,scores={data=3}] ~~~ scoreboard players add @a temp 20
execute @e[name=difficulty,scores={data=4}] ~~~ scoreboard players add @a temp 30

## 时长加分（分钟）
## 30    30-45   45-60   60-75   75-90   90-105  105-120 120-135
## +40   +35     +30     +25     +20     +15     +10     +5
execute @e[name=playedMinute,scores={time=0..30}] ~~~ scoreboard players add @a temp 40
execute @e[name=playedMinute,scores={time=31..45}] ~~~ scoreboard players add @a temp 35
execute @e[name=playedMinute,scores={time=46..60}] ~~~ scoreboard players add @a temp 30
execute @e[name=playedMinute,scores={time=61..75}] ~~~ scoreboard players add @a temp 25
execute @e[name=playedMinute,scores={time=76..90}] ~~~ scoreboard players add @a temp 20
execute @e[name=playedMinute,scores={time=91..105}] ~~~ scoreboard players add @a temp 15
execute @e[name=playedMinute,scores={time=106..120}] ~~~ scoreboard players add @a temp 10
execute @e[name=playedMinute,scores={time=121..135}] ~~~ scoreboard players add @a temp 5

## 击杀加分
## 0-300   300-450   450-600   600-750
## +20     +15       +10       +5
execute @a[scores={killAmount=0..300}] ~~~ scoreboard players add @a temp 20
execute @a[scores={killAmount=301..450}] ~~~ scoreboard players add @a temp 15
execute @a[scores={killAmount=451..600}] ~~~ scoreboard players add @a temp 10
execute @a[scores={killAmount=651..750}] ~~~ scoreboard players add @a temp 5

## 死亡加分
## 0   1   2~3   4~6   7~10   10~15  15~20   21~30
## +40 +35 +30   +25   +20    +15    +10     +5
execute @a[scores={deathTimes=0}] ~~~ scoreboard players add @a temp 40
execute @a[scores={deathTimes=1}] ~~~ scoreboard players add @a temp 35
execute @a[scores={deathTimes=2..3}] ~~~ scoreboard players add @a temp 30
execute @a[scores={deathTimes=4..6}] ~~~ scoreboard players add @a temp 25
execute @a[scores={deathTimes=7..10}] ~~~ scoreboard players add @a temp 20
execute @a[scores={deathTimes=10..15}] ~~~ scoreboard players add @a temp 15
execute @a[scores={deathTimes=15..20}] ~~~ scoreboard players add @a temp 10
execute @a[scores={deathTimes=21..30}] ~~~ scoreboard players add @a temp 5

## 使用药水加分
## 使用过   未使用过
## +0       +10
execute @a[tag=!potionUsed] ~~~ scoreboard players add @a temp 10

tellraw @s {"rawtext":[{"translate":"§l===== 综合评价 =====\n"}]}
tellraw @s[scores={temp=111..120}] {"rawtext":[{"translate":"评价等级 | §6S++ §f\n§6还是PVE大佬？！！"}]}
tellraw @s[scores={temp=101..110}] {"rawtext":[{"translate":"评价等级 | §6S+ §f\n§6你的实力恐怖如斯..."}]}
tellraw @s[scores={temp=91..100}] {"rawtext":[{"translate":"评价等级 | §6S §f\n§6太赞啦！你的PVE有一手！"}]}
tellraw @s[scores={temp=81..90}] {"rawtext":[{"translate":"评价等级 | §aA §f\n§a不错哦！减少死亡次数或降低时长或许有助于你提高评价！"}]}
tellraw @s[scores={temp=71..80}] {"rawtext":[{"translate":"评价等级 | §bB §f\n§b还可以！也许是时长或死亡严重拖累了你...多练练就好啦~"}]}
tellraw @s[scores={temp=61..70}] {"rawtext":[{"translate":"评价等级 | §eC §f\n§e及格水平，还不错啦~"}]}
tellraw @s[scores={temp=41..60}] {"rawtext":[{"translate":"评价等级 | §dD §f\n§d这个地图可能对你稍微有些挑战性...多练练这张地图来提升你的PVE吧！"}]}
tellraw @s[scores={temp=21..40}] {"rawtext":[{"translate":"评价等级 | §cE §f\n§c勇气贤者...！很难不怀疑别人可能比你更有勇气QAQ"}]}
tellraw @s[scores={temp=0..20}] {"rawtext":[{"translate":"评价等级 | §4F §f\n§4不管怎么说...感谢你游玩本地图qwq"}]}

tellraw @s {"rawtext":[{"translate":"§l===== 记录数据 =====\n"}]}
tellraw @s {"rawtext":[{"translate":"通关次数 | §a%%s","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度1） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute1"}},{"score":{"objective":"record","name":"bestTimeSecond1"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度2） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute2"}},{"score":{"objective":"record","name":"bestTimeSecond2"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度3） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute3"}},{"score":{"objective":"record","name":"bestTimeSecond3"}}]}}]}
tellraw @s {"rawtext":[{"translate":"最佳通关记录 §8（难度4） §f| §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute4"}},{"score":{"objective":"record","name":"bestTimeSecond4"}}]}}]}
