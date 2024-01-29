# ===== 绳枪判定器 =====
# 判定逻辑：当出现绳枪后，将绳枪和最近的玩家利用记分板“绑定”（即赋予相同的记分板值）

# --- 绳枪粒子效果 ---
execute @e[type=aw:hookshot] ~~~ particle minecraft:endrod ^^^-1

# --- 判定绳枪数量 ---
scoreboard players set @e[name=hookshotAmount] background 0
execute @e[type=aw:hookshot] ~~~ scoreboard players add @e[name=hookshotAmount] background 1

# --- 出现绳枪后为玩家激活加分 ---

## 将刚出现的绳枪改为激活状态，激活的绳枪可以激活附近的玩家
## active.@e[type=aw:hookshot] = 1 时是激活的，为 0或-1 时是未激活的。
scoreboard players add @e[type=aw:hookshot] active 1

## 让绳枪为最近的玩家激活
execute @e[name=hookshotAmount,scores={background=1..}] ~~~ execute @e[type=aw:hookshot,scores={active=1}] ~~~ scoreboard players add @p[scores={hookshot=-1}] hookshot 1

## 取消绳枪的激活状态，避免连续给不相关的玩家激活 | 设置为-1，这样在下一次循环+1分时就可以将active.~改为0
scoreboard players set @e[type=aw:hookshot] active -1

# --- 将绳枪与其玩家绑定 ---
# 即保持玩家和绳枪的记分板数值一致

scoreboard players add @e[type=aw:hookshot] hookshot 1
scoreboard players add @a[scores={hookshot=0..}] hookshot 1

# --- 当绳枪碰到木板后，传送与绳枪绑定的玩家 ---

## 检测绳枪是否（即将）碰到木板 | 碰到木板后，temp3.hookshot=!0
scoreboard players add @e[type=aw:hookshot] temp3 0
execute @e[type=aw:hookshot] ~~~ function entities/hookshot/hit_planks_test

## 绳枪碰到木板后，将玩家和绳枪的数据保存到temp.~和temp2.@s上 | 判断哪个玩家的时间和该绳枪的时间是一样的
execute @e[type=aw:hookshot,scores={temp3=!0}] ~~~ scoreboard players operation @s temp = @s hookshot
execute @e[type=aw:hookshot,scores={temp3=!0}] ~~~ execute @a ~~~ scoreboard players operation @s temp2 = @s hookshot
execute @e[type=aw:hookshot,scores={temp3=!0}] ~~~ execute @a[scores={hookshot=0..}] ~~~ scoreboard players operation @s temp2 -= @e[type=aw:hookshot,scores={temp3=!0},c=1] temp

## 将绑定的玩家传送到最近的绳枪上
execute @e[type=aw:hookshot,scores={temp3=1..8}] ~~~ tp @a[scores={temp2=0}] ~~-1~
execute @e[type=aw:hookshot,scores={temp3=9}] ~~~ tp @a[scores={temp2=0}] ~~-3~
execute @e[type=aw:hookshot,scores={temp3=10}] ~~~ tp @a[scores={temp2=0}] ~~1~

# --- 绳枪的清除 ---

## 将玩家激活状态归零
execute @e[type=aw:hookshot,scores={temp3=!0}] ~~~ execute @a[scores={temp2=0}] ~~~ scoreboard players set @s hookshot -1

## 传送之后移除绳枪
kill @e[type=aw:hookshot,scores={temp3=!0}]

## 当绳枪进入水中时会急速减速并停下
execute @e[type=aw:hookshot] ~~~ detect ~~~ minecraft:water -1 kill @s
execute @e[type=aw:hookshot] ~~~ detect ~~~ minecraft:flowing_water -1 kill @s

## 当绳枪未撞到物体时，清除距玩家50格之外的绳枪
execute @p ~~~ kill @e[type=aw:hookshot,rm=50]

# --- 当不存在绳枪时，将所有玩家的激活状态归零 ---
execute @e[name=hookshotAmount,scores={background=0}] ~~~ scoreboard players set @a hookshot -1