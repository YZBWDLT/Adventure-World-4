# ===== 音效控制器 =====
# 利用该音效控制器以控制远程传送等情况下应当播放的音效
# 执行逻辑：判断音效播放器是否激活（激活时active.soundPlayer=!0），如果处于激活状态，那么开始计时并在2刻后播放音效
# 【该函数仅限在音效播放器激活状态下执行】

# --- 计时器 ---
# 当处于第3刻后，停止执行并关闭音效控制器
scoreboard players add @e[name=soundPlayer] time 1
scoreboard players set @s[name=soundPlayer,scores={time=3..}] active 0
scoreboard players set @e[name=soundPlayer,scores={time=3..}] time 0

# --- 音效事件 ---

## 1 | random.orb | 音调1
execute @e[name=soundPlayer,scores={active=1,time=2}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
## 2 | random.orb | 音调2
execute @e[name=soundPlayer,scores={active=2,time=2}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
## 3 | mob.villager.yes | 音调1
execute @e[name=soundPlayer,scores={active=3,time=2}] ~~~ execute @a ~~~ playsound mob.villager.yes @s ~~~ 1 1
## 4 | mob.villager.no | 音调1
execute @e[name=soundPlayer,scores={active=4,time=2}] ~~~ execute @a ~~~ playsound mob.villager.no @s ~~~ 1 1
## 5 | mob.cat.meow | 音调0.75
execute @e[name=soundPlayer,scores={active=5,time=2}] ~~~ execute @a ~~~ playsound mob.cat.meow @s ~~~ 1 0.75
## 6 | random.anvil_break | 音调0.5
execute @e[name=soundPlayer,scores={active=6,time=2}] ~~~ execute @a ~~~ playsound random.anvil_break @s ~~~ 1 0.5
## 7 | random.levelup | 音调1
execute @e[name=soundPlayer,scores={active=7,time=2}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 1
## 8 | random.levelup | 音调2
execute @e[name=soundPlayer,scores={active=8,time=2}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2
## 9 | smithing_table.use | 音调1
execute @e[name=soundPlayer,scores={active=9,time=2}] ~~~ execute @a ~~~ playsound smithing_table.use @s ~~~ 1 1
## 10 | random.levelup | 音调1.25
execute @e[name=soundPlayer,scores={active=10,time=2}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 1.25
## 11 | random.pop | 音调1
execute @e[name=soundPlayer,scores={active=11,time=2}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 1
## 12 | random.anvil_land | 音调1
execute @e[name=soundPlayer,scores={active=12,time=2}] ~~~ execute @a ~~~ playsound random.anvil_land @s ~~~ 1 1
## 13 | random.anvil_break | 音调0.75
execute @e[name=soundPlayer,scores={active=13,time=2}] ~~~ execute @a ~~~ playsound random.anvil_break @s ~~~ 1 0.75 1
## 14 | beacon.power | 音调0.75
execute @e[name=soundPlayer,scores={active=14,time=2}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1