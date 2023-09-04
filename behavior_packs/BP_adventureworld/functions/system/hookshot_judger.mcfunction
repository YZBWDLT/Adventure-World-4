# 绳枪判定器（循环执行）

# ---绳枪判定---
## 绳枪判定将仅保留一个绳枪。如此做是为了防止多绳枪判定出现问题。

execute @e[name=hookshotAmount,scores={background=2..}] ~~~ execute @e[family=hookshot,tag=!firstHookshot] ~~~ tellraw @p { "rawtext": [ { "text": "§c正在有人使用绳枪哦！请稍后再试。" } ] }
execute @e[name=hookshotAmount,scores={background=2..}] ~~~ kill @e[family=hookshot,tag=!firstHookshot]
tag @e[family=hookshot] add firstHookshot

# ---掷出者判定---
## 绳枪判定部分已经仅留下一个绳枪实体，因此对此实体附近的玩家给予绳枪投掷者（hookshotThrower）标签
execute @e[family=hookshot,tag=firstHookshot,tag=!alreadyHaveThrower] ~~~ tag @p add hookshotThrower
execute @a[tag=hookshotThrower] ~~~ tag @e[c=1,family=hookshot,tag=firstHookshot] add alreadyHaveThrower
#(=) execute if score hookshotAmount matches 1 unless entity @a[tag=hookshotThrower] as @e[family=hookshot] run tag @p add hookshotThrower

## 没有绳枪时，移除异常存在的hookshotThrower
execute @e[name=hookshotAmount,scores={background=0}] ~~~ tag @a[tag=hookshotThrower] remove hookshotThrower

# ---移除异常绳枪---
kill @e[type=aw:hookshot,tag=hitBlockOrEntity,tag=hitPlanks]
execute @e[type=aw:hookshot] ~~~ detect ~~~ minecraft:water -1 kill @s
execute @e[type=aw:hookshot] ~~~ detect ~~~ minecraft:flowing_water -1 kill @s
