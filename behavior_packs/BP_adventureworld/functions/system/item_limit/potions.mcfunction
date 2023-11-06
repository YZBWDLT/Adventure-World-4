# ===== 药水上限 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

# --- 生命药水 I ---
## 开始游戏前，不允许有该药水
execute @e[name=level,scores={background=100..110}] ~~~ clear @a[hasitem={item=aw:health_potion_1}] aw:health_potion_1
## 1-1，上限+1
execute @e[name=level,scores={background=111..210}] ~~~ scoreboard players set @a[hasitem={item=aw:health_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=111..210}] ~~~ clear @a[scores={temp=1}] aw:health_potion_1
execute @e[name=level,scores={background=111..210}] ~~~ give @a[scores={temp=1}] aw:health_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 2-1，上限+1
execute @e[name=level,scores={background=211..310}] ~~~ scoreboard players set @a[hasitem={item=aw:health_potion_1,quantity=3..}] temp 1
execute @e[name=level,scores={background=211..310}] ~~~ clear @a[scores={temp=1}] aw:health_potion_1
execute @e[name=level,scores={background=211..310}] ~~~ give @a[scores={temp=1}] aw:health_potion_1 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 3-1，上限+1
execute @e[name=level,scores={background=311..}] ~~~ scoreboard players set @a[hasitem={item=aw:health_potion_1,quantity=4..}] temp 1
execute @e[name=level,scores={background=311..}] ~~~ clear @a[scores={temp=1}] aw:health_potion_1
execute @e[name=level,scores={background=311..}] ~~~ give @a[scores={temp=1}] aw:health_potion_1 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 生命药水 II ---
## 开始游戏前，不允许有该药水
execute @e[name=level,scores={background=100..220}] ~~~ clear @a[hasitem={item=aw:health_potion_2}] aw:health_potion_2
## 2-2，上限+1
execute @e[name=level,scores={background=221..410}] ~~~ scoreboard players set @a[hasitem={item=aw:health_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=221..410}] ~~~ clear @a[scores={temp=1}] aw:health_potion_2
execute @e[name=level,scores={background=221..410}] ~~~ give @a[scores={temp=1}] aw:health_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 4-1，上限+1
execute @e[name=level,scores={background=411..}] ~~~ scoreboard players set @a[hasitem={item=aw:health_potion_2,quantity=3..}] temp 1
execute @e[name=level,scores={background=411..}] ~~~ clear @a[scores={temp=1}] aw:health_potion_2
execute @e[name=level,scores={background=411..}] ~~~ give @a[scores={temp=1}] aw:health_potion_2 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 生命恢复药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={background=100..120}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_1}] aw:regeneration_potion_1
execute @e[name=level,scores={background=100..610}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_2}] aw:regeneration_potion_2
## 在1-2~6-1期间，I级上限为1
execute @e[name=level,scores={background=121..610}] ~~~ scoreboard players set @a[hasitem={item=aw:regeneration_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=121..610}] ~~~ clear @a[scores={temp=1}] aw:regeneration_potion_1
execute @e[name=level,scores={background=121..610}] ~~~ give @a[scores={temp=1}] aw:regeneration_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 在6-1之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={background=611..}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_1}] aw:regeneration_potion_1

execute @e[name=level,scores={background=611..}] ~~~ scoreboard players set @a[hasitem={item=aw:regeneration_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=611..}] ~~~ clear @a[scores={temp=1}] aw:regeneration_potion_2
execute @e[name=level,scores={background=611..}] ~~~ give @a[scores={temp=1}] aw:regeneration_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 生命提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={background=100..230}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_1}] aw:health_boost_potion_1
execute @e[name=level,scores={background=100..440}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_2}] aw:health_boost_potion_2
## 在2-3~4-4期间，I级上限为1
execute @e[name=level,scores={background=231..440}] ~~~ scoreboard players set @a[hasitem={item=aw:health_boost_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=231..440}] ~~~ clear @a[scores={temp=1}] aw:health_boost_potion_1
execute @e[name=level,scores={background=231..440}] ~~~ give @a[scores={temp=1}] aw:health_boost_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 在4-4之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={background=441..}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_1}] aw:health_boost_potion_1

execute @e[name=level,scores={background=441..}] ~~~ scoreboard players set @a[hasitem={item=aw:health_boost_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=441..}] ~~~ clear @a[scores={temp=1}] aw:health_boost_potion_2
execute @e[name=level,scores={background=441..}] ~~~ give @a[scores={temp=1}] aw:health_boost_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 抗性提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={background=100..130}] ~~~ clear @a[hasitem={item=aw:resistance_potion_1}] aw:resistance_potion_1
execute @e[name=level,scores={background=100..420}] ~~~ clear @a[hasitem={item=aw:resistance_potion_2}] aw:resistance_potion_2
## 在1-3~4-2期间，I级上限为1
execute @e[name=level,scores={background=131..420}] ~~~ scoreboard players set @a[hasitem={item=aw:resistance_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=131..420}] ~~~ clear @a[scores={temp=1}] aw:resistance_potion_1
execute @e[name=level,scores={background=131..420}] ~~~ give @a[scores={temp=1}] aw:resistance_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 在4-2之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={background=421..}] ~~~ clear @a[hasitem={item=aw:resistance_potion_1}] aw:resistance_potion_1
execute @e[name=level,scores={background=421..}] ~~~ scoreboard players set @a[hasitem={item=aw:resistance_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=421..}] ~~~ clear @a[scores={temp=1}] aw:resistance_potion_2
execute @e[name=level,scores={background=421..}] ~~~ give @a[scores={temp=1}] aw:resistance_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 力量药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={background=100..340}] ~~~ clear @a[hasitem={item=aw:strength_potion_1}] aw:strength_potion_1
execute @e[name=level,scores={background=100..640}] ~~~ clear @a[hasitem={item=aw:strength_potion_2}] aw:strength_potion_2
## 在3-4~6-4期间，I级上限为1
execute @e[name=level,scores={background=341..640}] ~~~ scoreboard players set @a[hasitem={item=aw:strength_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=341..640}] ~~~ clear @a[scores={temp=1}] aw:strength_potion_1
execute @e[name=level,scores={background=341..640}] ~~~ give @a[scores={temp=1}] aw:strength_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 在6-4之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={background=641..}] ~~~ clear @a[hasitem={item=aw:strength_potion_1}] aw:strength_potion_1
execute @e[name=level,scores={background=641..}] ~~~ scoreboard players set @a[hasitem={item=aw:strength_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=641..}] ~~~ clear @a[scores={temp=1}] aw:strength_potion_2
execute @e[name=level,scores={background=641..}] ~~~ give @a[scores={temp=1}] aw:strength_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0

# --- 全提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={background=100..320}] ~~~ clear @a[hasitem={item=aw:boost_potion_1}] aw:boost_potion_1
execute @e[name=level,scores={background=100..620}] ~~~ clear @a[hasitem={item=aw:boost_potion_2}] aw:boost_potion_2
## 在3-2~6-2期间，I级上限为1
execute @e[name=level,scores={background=321..620}] ~~~ scoreboard players set @a[hasitem={item=aw:boost_potion_1,quantity=2..}] temp 1
execute @e[name=level,scores={background=321..620}] ~~~ clear @a[scores={temp=1}] aw:boost_potion_1
execute @e[name=level,scores={background=321..620}] ~~~ give @a[scores={temp=1}] aw:boost_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
## 在6-2之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={background=621..}] ~~~ clear @a[hasitem={item=aw:boost_potion_1}] aw:boost_potion_1
execute @e[name=level,scores={background=621..}] ~~~ scoreboard players set @a[hasitem={item=aw:boost_potion_2,quantity=2..}] temp 1
execute @e[name=level,scores={background=621..}] ~~~ clear @a[scores={temp=1}] aw:boost_potion_2
execute @e[name=level,scores={background=621..}] ~~~ give @a[scores={temp=1}] aw:boost_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a temp 0
