# 开始游戏

## --- 设置level ---
scoreboard players set @e[name=level] background 301

function methods/important_items_tester

## --- 标题&音效 ---
title @a times 0 100 0
title @a title §b§l湖 泊 神 殿
title @a subtitle §c3-0
execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1

## --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

## 封堵各关入口
fill -186 -21 30 -186 -19 28 minecraft:cobblestone_wall["wall_block_type":"prismarine"]
setblock -186 -20 29 air
fill -173 -21 13 -171 -19 13 minecraft:cobblestone_wall["wall_block_type":"prismarine"]
fill -164 -21 26 -162 -19 26 minecraft:cobblestone_wall["wall_block_type":"prismarine"]
fill -168 -15 24 -168 -13 22 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## 初始化
fill -191 -21 0 -170 -18 21 minecraft:sponge[] replace minecraft:water
fill -191 -21 0 -170 -18 21 minecraft:sponge[] replace minecraft:flowing_water
fill -191 -21 0 -170 -18 21 air[] replace sponge["sponge_type":"wet"]
fill -191 -21 0 -170 -18 21 air[] replace sponge["sponge_type":"dry"]
fill -169 -14 27 -177 15 19 minecraft:sponge[] replace minecraft:water
fill -169 -14 27 -177 15 19 minecraft:sponge[] replace minecraft:flowing_water
fill -169 -14 27 -177 15 19 air[] replace minecraft:sponge["sponge_type":"wet"]
fill -169 -14 27 -177 15 19 air[] replace minecraft:sponge["sponge_type":"dry"]