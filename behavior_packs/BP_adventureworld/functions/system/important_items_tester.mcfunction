# 重要物品检测器

## --- 清除重复物品 ---

### 皮革盔甲
execute @e[name=level,scores={stats=100..131}] ~~~ clear @a[hasitem={item=leather_helmet,quantity=2..}] leather_helmet -1 1
execute @e[name=level,scores={stats=100..131}] ~~~ clear @a[hasitem={item=leather_chestplate,quantity=2..}] leather_chestplate -1 1
execute @e[name=level,scores={stats=100..131}] ~~~ clear @a[hasitem={item=leather_leggings,quantity=2..}] leather_leggings -1 1
execute @e[name=level,scores={stats=100..499}] ~~~ clear @a[hasitem={item=leather_boots,quantity=2..}] leather_boots -1 1
### 绳枪
execute @e[name=level,scores={stats=121..}] ~~~ clear @a[hasitem={item=aw:hookshot,quantity=2..}] aw:hookshot -1 1
### 铁盔甲
execute @e[name=level,scores={stats=132..311}] ~~~ clear @a[hasitem={item=aw:iron_helmet,quantity=2..}] aw:iron_helmet -1 1
execute @e[name=level,scores={stats=132..440}] ~~~ clear @a[hasitem={item=aw:iron_chestplate,quantity=2..}] aw:iron_chestplate -1 1
execute @e[name=level,scores={stats=132..433}] ~~~ clear @a[hasitem={item=aw:iron_leggings,quantity=2..}] aw:iron_leggings -1 1
execute @e[name=level,scores={stats=132..322}] ~~~ clear @a[hasitem={item=aw:iron_boots,quantity=2..}] aw:iron_boots -1 1
### 普通剑
execute @e[name=level,scores={stats=100..233}] ~~~ clear @a[hasitem={item=aw:normal_sword,quantity=2..}] aw:normal_sword -1 1
### 钢剑
execute @e[name=level,scores={stats=234..640}] ~~~ clear @a[hasitem={item=aw:steel_sword,quantity=2..}] aw:steel_sword -1 1
### 弓
execute @e[name=level,scores={stats=212..412}] ~~~ clear @a[hasitem={item=bow,quantity=2..}] bow
### 水下呼吸 III 附魔钻石头盔 
execute @e[name=level,scores={stats=312..}] ~~~ clear @a[hasitem={item=aw:diamond_helmet,quantity=2..}] aw:diamond_helmet -1 1
### 深海探索者 III 附魔钻石靴子
execute @e[name=level,scores={stats=323..}] ~~~ clear @a[hasitem={item=aw:diamond_boots,quantity=2..}] aw:diamond_boots -1 1
### 脊柱之盾
execute @e[name=level,scores={stats=344..}] ~~~ clear @a[hasitem={item=shield,quantity=2..}] shield -1 1
### 火弓
execute @e[name=level,scores={stats=413..622}] ~~~ clear @a[hasitem={item=bow,quantity=2..}] bow
### 箭袋
execute @e[name=level,scores={stats=423..}] ~~~ clear @a[hasitem={item=aw:quiver,quantity=2..}] aw:quiver -1 1
### 钻石护腿
execute @e[name=level,scores={stats=434..}] ~~~ clear @a[hasitem={item=aw:diamond_leggings,quantity=2..}] aw:diamond_leggings -1 1
### 钻石胸甲
execute @e[name=level,scores={stats=441..}] ~~~ clear @a[hasitem={item=aw:diamond_chestplate,quantity=2..}] aw:diamond_chestplate -1 1
### 蓝天之弓
execute @e[name=level,scores={stats=623..}] ~~~ clear @a[hasitem={item=bow,quantity=2..}] bow -1 1
### 旷野之剑
execute @e[name=level,scores={stats=641..}] ~~~ clear @a[hasitem={item=aw:wild_sword,quantity=2..}] aw:wild_sword -1 1

## --- 无物品时，给予其物品 ---

### 皮革盔甲
execute @e[name=level,scores={stats=100..131}] ~~~ loot give @a[hasitem={item=leather_helmet,quantity=0}] loot "items/leather_helmet"
execute @e[name=level,scores={stats=100..131}] ~~~ loot give @a[hasitem={item=leather_chestplate,quantity=0}] loot "items/leather_chestplate"
execute @e[name=level,scores={stats=100..131}] ~~~ loot give @a[hasitem={item=leather_leggings,quantity=0}] loot "items/leather_leggings"
execute @e[name=level,scores={stats=100..499}] ~~~ loot give @a[hasitem={item=leather_boots,quantity=0}] loot "items/leather_boots"
### 绳枪
execute @e[name=level,scores={stats=121..}] ~~~ loot give @a[hasitem={item=aw:hookshot,quantity=0}] loot "items/hookshot"
### 铁盔甲
execute @e[name=level,scores={stats=132..311}] ~~~ loot give @a[hasitem={item=aw:iron_helmet,quantity=0}] loot "items/iron_helmet"
execute @e[name=level,scores={stats=132..440}] ~~~ loot give @a[hasitem={item=aw:iron_chestplate,quantity=0}] loot "items/iron_chestplate"
execute @e[name=level,scores={stats=132..433}] ~~~ loot give @a[hasitem={item=aw:iron_leggings,quantity=0}] loot "items/iron_leggings"
execute @e[name=level,scores={stats=132..322}] ~~~ loot give @a[hasitem={item=aw:iron_boots,quantity=0}] loot "items/iron_boots"
### 普通剑
execute @e[name=level,scores={stats=100..233}] ~~~ loot give @a[hasitem={item=aw:normal_sword,quantity=0}] loot "items/normal_sword"
### 钢剑
execute @e[name=level,scores={stats=234..640}] ~~~ loot give @a[hasitem={item=aw:steel_sword,quantity=0}] loot "items/steel_sword"
### 弓
execute @e[name=level,scores={stats=212..412}] ~~~ loot give @a[hasitem={item=bow,quantity=0}] loot "items/normal_bow"
### 水下呼吸 III 附魔钻石头盔 
execute @e[name=level,scores={stats=312..}] ~~~ loot give @a[hasitem={item=aw:diamond_helmet,quantity=0}] loot "items/water_breathing_diamond_helmet"
### 深海探索者 III 附魔钻石靴子
execute @e[name=level,scores={stats=323..}] ~~~ loot give @a[hasitem={item=aw:diamond_boots,quantity=0}] loot "items/depth_strider_diamond_boots"
### 脊柱之盾
execute @e[name=level,scores={stats=344..}] ~~~ loot give @a[hasitem={item=shield,quantity=0}] loot "items/spine_shield"
### 火弓
execute @e[name=level,scores={stats=413..622}] ~~~ loot give @a[hasitem={item=bow,quantity=0}] loot "items/flame_bow"
### 箭袋
execute @e[name=level,scores={stats=423..}] ~~~ loot give @a[hasitem={item=aw:quiver,quantity=0}] loot "items/quiver"
### 钻石护腿
execute @e[name=level,scores={stats=434..}] ~~~ loot give @a[hasitem={item=aw:diamond_leggings,quantity=0}] loot "items/diamond_leggings"
### 钻石胸甲
execute @e[name=level,scores={stats=441..}] ~~~ loot give @a[hasitem={item=aw:diamond_chestplate,quantity=0}] loot "items/diamond_chestplate"
### 蓝天之弓
execute @e[name=level,scores={stats=623..}] ~~~ loot give @a[hasitem={item=bow,quantity=0}] loot "items/sky_bow"
### 旷野之剑
execute @e[name=level,scores={stats=641..}] ~~~ loot give @a[hasitem={item=aw:wild_sword,quantity=0}] loot "items/wild_sword"
