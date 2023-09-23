# ===== 盔甲手持检测器与附魔器 =====
# 检测玩家是否手持过（钻石）头盔或靴子，以保证玩家的盔甲拥有应有的附魔
# 未手持过=0 手持=1 手持过=2

## --- 对不存在isHoldingHelmet.@s和isHoldingBoots.@s变量的玩家强制赋予 ---
scoreboard players add @a isHoldingHelmet 0
scoreboard players add @a isHoldingBoots 0

## --- 设置isHoldingHelmet.@s和isHoldingBoots.@s ---
### 手持时设为1
scoreboard players set @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand}] isHoldingHelmet 1
scoreboard players set @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand}] isHoldingBoots 1
### 未手持时，若以前手持过（1..2）则设为2
scoreboard players set @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand,quantity=0},scores={isHoldingHelmet=1..2}] isHoldingHelmet 2
scoreboard players set @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand,quantity=0},scores={isHoldingBoots=1..2}] isHoldingBoots 2
### 未手持时，若以前未手持过（!1..2）则设为0
scoreboard players set @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand,quantity=0},scores={isHoldingHelmet=!1..2}] isHoldingHelmet 0
scoreboard players set @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand,quantity=0},scores={isHoldingBoots=!1..2}] isHoldingBoots 0

## --- 为手持钻石头盔和钻石靴子的玩家附魔 ---
enchant @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand}] respiration 3
enchant @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand}] depth_strider 3

## --- 为手持弓的玩家附魔 ---
execute @e[name=level,scores={background=411..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] flame 1
execute @e[name=level,scores={background=621..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] power 4