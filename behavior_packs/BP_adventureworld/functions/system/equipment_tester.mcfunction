# ===== 装备检测器 =====
# 检测玩家是否手持过装备（钻石头盔、钻石靴子、弓），以保证玩家的装备拥有应有的附魔
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
### 3-1解锁水下呼吸III
enchant @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand}] respiration 3
### 3-2解锁深海探索者III
enchant @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand}] depth_strider 3

## --- 为手持弓的玩家附魔 ---
### 2-1解锁耐久III
execute @e[name=level,scores={background=211..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] unbreaking 3
### 4-2解锁火矢
execute @e[name=level,scores={background=421..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] flame 1
### 6-1解锁力量V
execute @e[name=level,scores={background=611..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] power 5
