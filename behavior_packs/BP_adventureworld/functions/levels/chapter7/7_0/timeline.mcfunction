# ===== 旷野之剑 动画 =====


execute @e[name=timeline,scores={time=100}] ~~~ fill -82 1 111 -91 -1 99 air
execute @e[name=timeline,scores={time=100}] ~~~ fill -82 0 111 -91 0 99 quartz_block["chisel_type":"smooth"]

## 当timeline=0时，玩家仍在6-4
## 此时给予失明，然后将玩家传送到黑屋之中

execute @e[name=timeline,scores={time=150}] ~~~ say (感觉这儿可以说点什么，但还没想好 =_=)(总之就是准备传送了(()))

execute @e[name=timeline,scores={time=200}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=280}] ~~~ tp @a -87 -40 85
execute @e[name=timeline,scores={time=280}] ~~~ fill -88 0 104 -86 0 106 quartz_block["chisel_type":"smooth"]

## 进入剑之神殿
execute @e[name=timeline,scores={time=360}] ~~~ tp @a -74 -40 105 facing -87 -37 105
execute @e[name=timeline,scores={time=360}] ~~~ scoreboard players set @e[name=level] background 700
execute @e[name=timeline,scores={time=360}] ~~~ title @a times 0 100 0
execute @e[name=timeline,scores={time=400}] ~~~ title @a title §f§l剑 之 神 殿
execute @e[name=timeline,scores={time=400}] ~~~ title @a subtitle §k7§r-§k0
execute @e[name=timeline,scores={time=400}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 0.75 1

execute @e[name=timeline,scores={time=420}] ~~~ effect @a clear

execute @e[name=timeline,scores={time=440}] ~~~ say (感觉这儿可以说点什么，但还没想好 =_=)(神剑召唤仪式(??))

## 释放粒子，生成神剑
execute @e[name=timeline,scores={time=535}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.25
execute @e[name=timeline,scores={time=540}] ~~~ particle aw:wild_sword1 -87 -39 105
execute @e[name=timeline,scores={time=540}] ~~~ particle aw:wild_sword2 -87 -39 105
execute @e[name=timeline,scores={time=540}] ~~~ particle aw:wild_sword3 -87 -39 105
execute @e[name=timeline,scores={time=540}] ~~~ particle aw:wild_sword4 -87 -35 105
execute @e[name=timeline,scores={time=545}] ~~~ particle aw:wild_sword4 -87 -30 105
execute @e[name=timeline,scores={time=550}] ~~~ particle aw:wild_sword4 -87 -25 105
execute @e[name=timeline,scores={time=555}] ~~~ particle aw:wild_sword4 -87 -20 105
execute @e[name=timeline,scores={time=560}] ~~~ particle aw:wild_sword4 -87 -15 105
execute @e[name=timeline,scores={time=565}] ~~~ particle aw:wild_sword4 -87 -10 105

execute @e[name=timeline,scores={time=760}] ~~~ particle aw:explosion -87 0 105
execute @e[name=timeline,scores={time=760}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={time=760}] ~~~ loot spawn -87 0 105 loot "items/wild_sword"
execute @e[name=timeline,scores={time=760}] ~~~ structure load 7_0_boomed -91 -1 99

execute @e[name=timeline,scores={time=765}] ~~~ say (提醒玩家捡起神剑)

## 停止，直到有玩家捡起神剑
execute @e[name=timeline,scores={time=770}] ~~~ scoreboard players set @e[name=timeline] active 2
execute @e[name=timeline,scores={time=760..770}] ~~~ execute @a[hasitem={item=aw:wild_sword}] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=timeline,scores={time=760..770}] ~~~ execute @a[hasitem={item=aw:wild_sword}] ~~~ scoreboard players set @e[name=timeline] time 799

## 刷新神剑，给予所有玩家
execute @e[name=timeline,scores={time=801}] ~~~ clear @a aw:steel_sword
execute @e[name=timeline,scores={time=801}] ~~~ clear @a aw:wild_sword
execute @e[name=timeline,scores={time=801}] ~~~ give @a aw:wild_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

execute @e[name=timeline,scores={time=900}] ~~~ say (准备直接开始下一关)

execute @e[name=timeline,scores={time=950}] ~~~ effect @a blindness 30 0 true

execute @e[name=timeline,scores={time=1000}] ~~~ tp @a -87 -40 85

## 7-1 开始
execute @e[name=timeline,scores={time=1060}] ~~~ tp @a -120 -18 105
execute @e[name=timeline,scores={time=1060}] ~~~ spawnpoint @a -120 -18 105
execute @e[name=timeline,scores={time=1060}] ~~~ fill -150 -18 102 -150 -16 100 nether_brick_fence

execute @e[name=timeline,scores={time=1100}] ~~~ title @a times 0 100 0
execute @e[name=timeline,scores={time=1100}] ~~~ title @a title §l§c封 印 神 殿
execute @e[name=timeline,scores={time=1100}] ~~~ title @a subtitle §cFINAL TEMPLE
execute @e[name=timeline,scores={time=1100}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1
execute @e[name=timeline,scores={time=1120}] ~~~ scoreboard players set @e[name=level] background 701
execute @e[name=timeline,scores={time=1120}] ~~~ effect @a clear

execute @e[name=timeline,scores={time=1160}] ~~~ say (准备好了吗？这将是你最后的战场！)

execute @e[name=timeline,scores={time=1260}] ~~~ function levels/chapter7/7_1/start_level

## 时间线结束
execute @e[name=timeline,scores={time=1260}] ~~~ scoreboard players set @s active 2
execute @e[name=timeline,scores={time=1260}] ~~~ scoreboard players set @s time 0