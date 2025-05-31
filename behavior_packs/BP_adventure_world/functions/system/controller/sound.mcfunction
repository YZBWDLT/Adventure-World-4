# ===== 音效播放器 =====
# 仅当音效播放器启用后执行

# --- 音效事件 ---
## 1 | random.orb | 音调1
execute if score sound active matches 1 as @a at @s run playsound random.orb @s ~~~ 1 1
## 2 | random.orb | 音调2
execute if score sound active matches 2 as @a at @s run playsound random.orb @s ~~~ 1 2
## 3 | mob.villager.yes | 音调1
execute if score sound active matches 3 as @a at @s run playsound mob.villager.yes @s ~~~ 1 1
## 4 | mob.villager.no | 音调1
execute if score sound active matches 4 as @a at @s run playsound mob.villager.no @s ~~~ 1 1
## 5 | mob.cat.meow | 音调0.75 | *仅限为`outOfBorder`玩家播放音效
execute if score sound active matches 5 as @a[tag=outOfBorder] at @s run playsound mob.cat.meow @s ~~~ 1 0.75
execute if score sound active matches 5 run tag @a remove outOfBorder
## 6 | random.anvil_break | 音调0.5
execute if score sound active matches 6 as @a at @s run playsound random.anvil_break @s ~~~ 1 0.5
## 7 | random.levelup | 音调1
execute if score sound active matches 7 as @a at @s run playsound random.levelup @s ~~~ 1 1
## 8 | random.levelup | 音调2
execute if score sound active matches 8 as @a at @s run playsound random.levelup @s ~~~ 1 2
## 9 | smithing_table.use | 音调1
execute if score sound active matches 9 as @a at @s run playsound smithing_table.use @s ~~~ 1 1
## 10 | random.levelup | 音调1.25
execute if score sound active matches 10 as @a at @s run playsound random.levelup @s ~~~ 1 1.25
## 11 | random.pop | 音调1
execute if score sound active matches 11 as @a at @s run playsound random.pop @s ~~~ 1 1
## 12 | random.anvil_land | 音调1
execute if score sound active matches 12 as @a at @s run playsound random.anvil_land @s ~~~ 1 1
## 13 | random.anvil_break | 音调0.75
execute if score sound active matches 13 as @a at @s run playsound random.anvil_break @s ~~~ 1 0.75 1
## 14 | beacon.power | 音调0.75
execute if score sound active matches 14 as @a at @s run playsound beacon.power @s ~~~ 1 1 1

# --- 重置音效播放器 ---
function lib/modify_data/states/sound/reset
