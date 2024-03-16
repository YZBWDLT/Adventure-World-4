# 动画粒子效果

## --- 阶段0 | 5s ---
## 初始化阶段，准备剑，剑在原地的阶段

### (1) 剑在原地
execute @e[name=timeline,scores={time=1}] ~~~ summon aw:wild_sword -87 -38 105
execute @e[name=timeline,scores={time=1}] ~~~ fill -82 1 111 -91 -1 99 air
execute @e[name=timeline,scores={time=1}] ~~~ fill -82 0 111 -91 0 99 quartz_block["chisel_type":"smooth"]
execute @e[name=timeline,scores={time=2}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_1

execute @e[name=timeline,scores={time=101..999}] ~~~ scoreboard players set @s time 1000

## --- 阶段1 | 25s ---
## 动画开始前。给予失明，然后将玩家传送到黑屋之中。
execute @e[name=timeline,scores={time=1060}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你突然感觉轻飘飘的，眼前开始模糊......"}]}
execute @e[name=timeline,scores={time=1060}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=1120}] ~~~ tp @a -87 -40 85

## 进入剑之神殿
execute @e[name=timeline,scores={time=1180}] ~~~ tp @a -79 -39 105 facing -87 -37 105
execute @e[name=timeline,scores={time=1180}] ~~~ scoreboard players set @e[name=level] data 701
execute @e[name=timeline,scores={time=1180}] ~~~ title @a times 0 100 0

execute @e[name=timeline,scores={time=1240}] ~~~ title @a title §f§l剑 之 神 殿
execute @e[name=timeline,scores={time=1240}] ~~~ title @a subtitle §k7§r-§k0
execute @e[name=timeline,scores={time=1240}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 0.75 1

execute @e[name=timeline,scores={time=1300}] ~~~ effect @a clear
execute @e[name=timeline,scores={time=1300}] ~~~ tellraw @a {"rawtext":[{"translate":"* 当你再次睁开眼时，发现自己身处纯白色的神殿之中......"}]}
execute @e[name=timeline,scores={time=1400}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你看到了那把传说的武器，它现在正散发着与众不同的光芒......"}]}

execute @e[name=timeline,scores={time=1500..1999}] ~~~ scoreboard players set @s time 2000

## --- 阶段2 ---
## 开始播放动画。

### (2) 剑缓慢拔出时
execute @e[name=timeline,scores={time=2000}] ~~~ particle aw:explosion -87 0 105
execute @e[name=timeline,scores={time=2000}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={time=2000}] ~~~ structure load 7_0_boomed -91 -1 99
execute @e[name=timeline,scores={time=2000}] ~~~ tellraw @a {"rawtext":[{"translate":"* 突然间，天上一束光照了下来，落在了台座上。"}]}

execute @e[name=timeline,scores={time=2060}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_2
execute @e[name=timeline,scores={time=2065}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.25
execute @e[name=timeline,scores={time=2065}] ~~~ particle aw:wild_sword1 -87 -39 105
execute @e[name=timeline,scores={time=2065}] ~~~ particle aw:wild_sword2 -87 -39 105
execute @e[name=timeline,scores={time=2065}] ~~~ particle aw:wild_sword3 -87 -39 105
execute @e[name=timeline,scores={time=2065}] ~~~ particle aw:wild_sword4 -87 -35 105
execute @e[name=timeline,scores={time=2070}] ~~~ particle aw:wild_sword4 -87 -30 105
execute @e[name=timeline,scores={time=2075}] ~~~ particle aw:wild_sword4 -87 -25 105
execute @e[name=timeline,scores={time=2080}] ~~~ particle aw:wild_sword4 -87 -20 105
execute @e[name=timeline,scores={time=2085}] ~~~ particle aw:wild_sword4 -87 -15 105
execute @e[name=timeline,scores={time=2090}] ~~~ particle aw:wild_sword4 -87 -10 105

### (3) 剑瞬间拔出
execute @e[name=timeline,scores={time=2380}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_3

### (4&5) 挥剑时
execute @e[name=timeline,scores={time=2455}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_4
execute @e[name=timeline,scores={time=2495}] ~~~ event entity @e[type=aw:wild_sword] aw:stage_5

### (6) 剑化为光
execute @e[name=timeline,scores={time=2660}] ~~~ execute @e[type=aw:wild_sword] ~~~ tp @s ~~-64~
execute @e[name=timeline,scores={time=2660}] ~~~ execute @a ~~~ playsound aw.sword_turn_to_light @s ~~~
execute @e[name=timeline,scores={time=2661}] ~~~ particle aw:wild_sword_disappear -87 -37 105
execute @e[name=timeline,scores={time=2665}] ~~~ kill @e[type=aw:wild_sword]
execute @e[name=timeline,scores={time=2666}] ~~~ scoreboard players set @s time 3000

## --- 阶段3 ---
## 开始传送玩家，7-1开始。
execute @e[name=timeline,scores={time=3000}] ~~~ clear @a aw:steel_sword
execute @e[name=timeline,scores={time=3000}] ~~~ clear @a aw:wild_sword
execute @e[name=timeline,scores={time=3000}] ~~~ give @a aw:wild_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=timeline,scores={time=3100}] ~~~ tellraw @a {"rawtext":[{"translate":"* 随着剑的消失，你惊奇的发现剑很识趣地替换掉了你手里的钢剑。"}]}
execute @e[name=timeline,scores={time=3200}] ~~~ tellraw @a {"rawtext":[{"translate":"* 它告诉了你它的名字 - §e旷野之剑§r。"}]}


execute @e[name=timeline,scores={time=3300}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你感觉身体再次变轻，听到了一个声音......"}]}
execute @e[name=timeline,scores={time=3300}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=3450}] ~~~ tp @a -87 -40 85
execute @e[name=timeline,scores={time=3450}] ~~~ kill @e[family=summoner]

### 7-1 开始
execute @e[name=timeline,scores={time=3600}] ~~~ tp @a -120 -17 105
execute @e[name=timeline,scores={time=3600}] ~~~ tp @e[family=respawner] -120 -17 105
execute @e[name=timeline,scores={time=3600}] ~~~ fill -150 -18 102 -150 -16 100 nether_brick

## （如果玩家失败，从这里开始）
execute @e[name=timeline,scores={time=3650}] ~~~ title @a times 0 100 0
execute @e[name=timeline,scores={time=3650}] ~~~ title @a title §l§c封 印 神 殿
execute @e[name=timeline,scores={time=3650}] ~~~ title @a subtitle §cFINAL TEMPLE
execute @e[name=timeline,scores={time=3650}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1
execute @e[name=timeline,scores={time=3670}] ~~~ effect @a clear

execute @e[name=timeline,scores={time=3800}] ~~~ tellraw @a {"rawtext":[{"translate":"§c* 准备好了吗？这是你最后的试炼。"}]}

execute @e[name=timeline,scores={time=3950}] ~~~ function levels/chapter7/7_1/start_level