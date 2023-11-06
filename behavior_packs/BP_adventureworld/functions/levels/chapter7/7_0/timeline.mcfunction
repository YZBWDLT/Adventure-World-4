# ===== 旷野之剑 动画 =====

## --- 阶段0 ---
## 初始化阶段（5秒）
execute @e[name=timeline,scores={time=100}] ~~~ fill -82 1 111 -91 -1 99 air
execute @e[name=timeline,scores={time=100}] ~~~ fill -82 0 111 -91 0 99 quartz_block["chisel_type":"smooth"]

execute @e[name=timeline,scores={time=101..999}] ~~~ scoreboard players set @s time 1000

## --- 阶段1 ---
## 动画开始前。给予失明，然后将玩家传送到黑屋之中。（18秒）

execute @e[name=timeline,scores={time=1060}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你突然感觉轻飘飘的，眼前开始模糊......"}]}
execute @e[name=timeline,scores={time=1060}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=1120}] ~~~ tp @a -87 -40 85

## 进入剑之神殿
execute @e[name=timeline,scores={time=1180}] ~~~ tp @a -79 -39 105 facing -87 -37 105
execute @e[name=timeline,scores={time=1180}] ~~~ scoreboard players set @e[name=level] background 700
execute @e[name=timeline,scores={time=1180}] ~~~ title @a times 0 100 0

execute @e[name=timeline,scores={time=1240}] ~~~ title @a title §f§l剑 之 神 殿
execute @e[name=timeline,scores={time=1240}] ~~~ title @a subtitle §k7§r-§k0
execute @e[name=timeline,scores={time=1240}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 0.75 1

execute @e[name=timeline,scores={time=1300}] ~~~ effect @a clear
execute @e[name=timeline,scores={time=1300}] ~~~ tellraw @a {"rawtext":[{"translate":"* 当你再次睁开眼时，发现自己身处纯白色的神殿之中......"}]}

execute @e[name=timeline,scores={time=1361..1399}] ~~~ scoreboard players set @s time 2000

## --- 阶段2 ---
## 开始播放动画。

## 释放粒子，生成神剑（10.5s）
execute @e[name=timeline,scores={time=2000}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.25
execute @e[name=timeline,scores={time=2005}] ~~~ particle aw:wild_sword1 -87 -39 105
execute @e[name=timeline,scores={time=2005}] ~~~ particle aw:wild_sword2 -87 -39 105
execute @e[name=timeline,scores={time=2005}] ~~~ particle aw:wild_sword3 -87 -39 105
execute @e[name=timeline,scores={time=2005}] ~~~ particle aw:wild_sword4 -87 -35 105
execute @e[name=timeline,scores={time=2010}] ~~~ particle aw:wild_sword4 -87 -30 105
execute @e[name=timeline,scores={time=2015}] ~~~ particle aw:wild_sword4 -87 -25 105
execute @e[name=timeline,scores={time=2020}] ~~~ particle aw:wild_sword4 -87 -20 105
execute @e[name=timeline,scores={time=2025}] ~~~ particle aw:wild_sword4 -87 -15 105
execute @e[name=timeline,scores={time=2030}] ~~~ particle aw:wild_sword4 -87 -10 105

execute @e[name=timeline,scores={time=2130}] ~~~ particle aw:explosion -87 0 105
execute @e[name=timeline,scores={time=2130}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={time=2130}] ~~~ give @a aw:wild_sword
execute @e[name=timeline,scores={time=2130}] ~~~ structure load 7_0_boomed -91 -1 99

execute @e[name=timeline,scores={time=2130}] ~~~ tellraw @a {"rawtext":[{"translate":"* 随着光点旋转升起，突然间天上一束光照了下来，落在了台座上。"}]}
execute @e[name=timeline,scores={time=2190}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你看到了那把传说的武器，它现在正散发着与众不同的光芒......"}]}

## 停止，直到有玩家捡起神剑
execute @e[name=timeline,scores={time=2210}] ~~~ scoreboard players set @e[name=timeline] active 2
execute @e[name=timeline,scores={time=2190..2210}] ~~~ execute @a[hasitem={item=aw:wild_sword}] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=timeline,scores={time=2190..2210}] ~~~ execute @a[hasitem={item=aw:wild_sword}] ~~~ scoreboard players set @e[name=timeline] time 3000

## --- 阶段3 ---
## 开始传送玩家，7-1开始。

## 刷新神剑，给予所有玩家
execute @e[name=timeline,scores={time=3000}] ~~~ clear @a aw:steel_sword
execute @e[name=timeline,scores={time=3000}] ~~~ clear @a aw:wild_sword
execute @e[name=timeline,scores={time=3000}] ~~~ give @a aw:wild_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=timeline,scores={time=3060}] ~~~ tellraw @a {"rawtext":[{"translate":"* 你感觉身体再次变轻，听到了一个声音......"}]}
execute @e[name=timeline,scores={time=3060}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=3240}] ~~~ tp @a -87 -40 85
execute @e[name=timeline,scores={time=3240}] ~~~ kill @e[family=summoner]

## 7-1 开始
execute @e[name=timeline,scores={time=3300}] ~~~ tp @a -120 -17 105
execute @e[name=timeline,scores={time=3300}] ~~~ tp @e[family=respawner] -120 -17 105
execute @e[name=timeline,scores={time=3300}] ~~~ fill -150 -18 102 -150 -16 100 nether_brick_fence

## （如果玩家失败，从这里开始）
execute @e[name=timeline,scores={time=3360}] ~~~ title @a times 0 100 0
execute @e[name=timeline,scores={time=3360}] ~~~ title @a title §l§c封 印 神 殿
execute @e[name=timeline,scores={time=3360}] ~~~ title @a subtitle §cFINAL TEMPLE
execute @e[name=timeline,scores={time=3360}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1
execute @e[name=timeline,scores={time=3360}] ~~~ scoreboard players set @e[name=level] background 701
execute @e[name=timeline,scores={time=3380}] ~~~ effect @a clear

execute @e[name=timeline,scores={time=3440}] ~~~ tellraw @a {"rawtext":[{"translate":"* 准备好了吗？这是你最后的试炼。"}]}

execute @e[name=timeline,scores={time=3450}] ~~~ function levels/chapter7/7_1/start_level