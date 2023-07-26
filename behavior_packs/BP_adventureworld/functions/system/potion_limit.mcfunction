# 药水上限

# --- 生命药水 I ---
## 开始游戏前，上限为0
execute @e[name=level,scores={stats=100..110}] ~~~ clear @a[hasitem={item=aw:health_potion_1}] aw:health_potion_1 -1 1
## 1-1，上限+1
execute @e[name=level,scores={stats=111..211}] ~~~ clear @a[hasitem={item=aw:health_potion_1,quantity=2..}] aw:health_potion_1 -1 1
## 2-1，上限+1
execute @e[name=level,scores={stats=212..311}] ~~~ clear @a[hasitem={item=aw:health_potion_1,quantity=3..}] aw:health_potion_1 -1 1
## 3-1，上限+1
execute @e[name=level,scores={stats=312..}] ~~~ clear @a[hasitem={item=aw:health_potion_1,quantity=4..}] aw:health_potion_1 -1 1

# --- 生命药水 II ---
## 开始游戏前，上限为0
execute @e[name=level,scores={stats=100..222}] ~~~ clear @a[hasitem={item=aw:health_potion_2}] aw:health_potion_2 -1 1
## 2-2，上限+1
execute @e[name=level,scores={stats=223..412}] ~~~ clear @a[hasitem={item=aw:health_potion_2,quantity=2..}] aw:health_potion_2 -1 1
## 4-1，上限+1
execute @e[name=level,scores={stats=413..}] ~~~ clear @a[hasitem={item=aw:health_potion_2,quantity=3..}] aw:health_potion_2 -1 1

# --- 生命恢复药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={stats=100..120}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_1}] aw:regeneration_potion_1 -1 1
execute @e[name=level,scores={stats=100..611}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_2}] aw:regeneration_potion_2 -1 1
## 在1-2~6-1期间，I级上限为1
execute @e[name=level,scores={stats=121..}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_1,quantity=2..}] aw:regeneration_potion_1 -1 1
## 在6-1之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={stats=611..}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_1}] aw:regeneration_potion_1 -1 1
execute @e[name=level,scores={stats=611..}] ~~~ clear @a[hasitem={item=aw:regeneration_potion_2,quantity=2..}] aw:regeneration_potion_2 -1 1

# --- 生命提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={stats=100..233}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_1}] aw:health_boost_potion_1 -1 1
execute @e[name=level,scores={stats=100..440}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_2}] aw:health_boost_potion_2 -1 1
## 在2-3~4-4期间，I级上限为1
execute @e[name=level,scores={stats=234..440}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_1,quantity=2..}] aw:health_boost_potion_1 -1 1
## 在4-4之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={stats=441..}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_1}] aw:health_boost_potion_1 -1 1
execute @e[name=level,scores={stats=441..}] ~~~ clear @a[hasitem={item=aw:health_boost_potion_2,quantity=2..}] aw:health_boost_potion_2 -1 1

# --- 抗性提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={stats=100..131}] ~~~ clear @a[hasitem={item=aw:resistance_potion_1}] aw:resistance_potion_1 -1 1
execute @e[name=level,scores={stats=100..422}] ~~~ clear @a[hasitem={item=aw:resistance_potion_2}] aw:resistance_potion_2 -1 1
## 在1-3~4-2期间，I级上限为1
execute @e[name=level,scores={stats=132..422}] ~~~ clear @a[hasitem={item=aw:resistance_potion_1,quantity=2..}] aw:resistance_potion_1 -1 1
## 在4-2之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={stats=423..}] ~~~ clear @a[hasitem={item=aw:resistance_potion_1}] aw:resistance_potion_1 -1 1
execute @e[name=level,scores={stats=423..}] ~~~ clear @a[hasitem={item=aw:resistance_potion_2,quantity=2..}] aw:resistance_potion_2 -1 1

# --- 力量药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={stats=100..343}] ~~~ clear @a[hasitem={item=aw:strength_potion_1}] aw:strength_potion_1 -1 1
execute @e[name=level,scores={stats=100..640}] ~~~ clear @a[hasitem={item=aw:strength_potion_2}] aw:strength_potion_2 -1 1
## 在3-4~6-4期间，I级上限为1
execute @e[name=level,scores={stats=344..640}] ~~~ clear @a[hasitem={item=aw:strength_potion_1,quantity=2..}] aw:strength_potion_1 -1 1
## 在6-4之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={stats=641..}] ~~~ clear @a[hasitem={item=aw:strength_potion_1}] aw:strength_potion_1 -1 1
execute @e[name=level,scores={stats=641..}] ~~~ clear @a[hasitem={item=aw:strength_potion_2,quantity=2..}] aw:strength_potion_2 -1 1

# --- 全提升药水 ---
## 开始游戏前，双等级上限均为0
execute @e[name=level,scores={stats=100..322}] ~~~ clear @a[hasitem={item=aw:boost_potion_1}] aw:boost_potion_1 -1 1
execute @e[name=level,scores={stats=100..622}] ~~~ clear @a[hasitem={item=aw:boost_potion_2}] aw:boost_potion_2 -1 1
## 在3-2~6-2期间，I级上限为1
execute @e[name=level,scores={stats=323..622}] ~~~ clear @a[hasitem={item=aw:boost_potion_1,quantity=2..}] aw:boost_potion_1 -1 1
## 在6-2之后，II级上限为1，同时清除I级药水
execute @e[name=level,scores={stats=623..}] ~~~ clear @a[hasitem={item=aw:boost_potion_1}] aw:boost_potion_1 -1 1
execute @e[name=level,scores={stats=623..}] ~~~ clear @a[hasitem={item=aw:boost_potion_2,quantity=2..}] aw:boost_potion_2 -1 1
