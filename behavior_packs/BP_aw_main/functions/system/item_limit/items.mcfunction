# ===== 物品上限器 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

## --- 将玩家多出的装备移除 ---

### 皮革头盔
scoreboard players set @a[hasitem={item=leather_helmet,quantity=2..}] temp 1
clear @a[scores={temp=1}] leather_helmet

### 皮革胸甲
scoreboard players set @a[hasitem={item=leather_chestplate,quantity=2..}] temp 1
clear @a[scores={temp=1}] leather_chestplate

### 皮革护腿
scoreboard players set @a[hasitem={item=leather_leggings,quantity=2..}] temp 1
clear @a[scores={temp=1}] leather_leggings

### 皮革靴子
scoreboard players set @a[hasitem={item=leather_boots,quantity=2..}] temp 1
clear @a[scores={temp=1}] leather_boots

### 铁头盔
scoreboard players set @a[hasitem={item=aw:iron_helmet,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:iron_helmet

### 铁胸甲
scoreboard players set @a[hasitem={item=aw:iron_chestplate,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:iron_chestplate

### 铁护腿
scoreboard players set @a[hasitem={item=aw:iron_leggings,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:iron_leggings

### 铁靴子
scoreboard players set @a[hasitem={item=aw:iron_boots,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:iron_boots

### 钻石头盔
scoreboard players set @a[hasitem={item=aw:diamond_helmet,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:diamond_helmet

### 钻石胸甲
scoreboard players set @a[hasitem={item=aw:diamond_chestplate,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:diamond_chestplate

### 钻石护腿
scoreboard players set @a[hasitem={item=aw:diamond_leggings,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:diamond_leggings

### 钻石靴子
scoreboard players set @a[hasitem={item=aw:diamond_boots,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:diamond_boots

### 普通剑
scoreboard players set @a[hasitem={item=aw:normal_sword,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:normal_sword

### 绳枪
scoreboard players set @a[hasitem={item=aw:hookshot,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:hookshot

### 启用准星
scoreboard players set @a[hasitem={item=aw:enable_crosshair,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:enable_crosshair

### 弓
scoreboard players set @a[hasitem={item=bow,quantity=2..}] temp 1
clear @a[scores={temp=1}] bow

### 箭袋
scoreboard players set @a[hasitem={item=aw:quiver,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:quiver

### 钢剑
scoreboard players set @a[hasitem={item=aw:steel_sword,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:steel_sword

### 盾
scoreboard players set @a[hasitem={item=shield,quantity=2..}] temp 1
clear @a[scores={temp=1}] shield

### 旷野之剑
scoreboard players set @a[hasitem={item=aw:wild_sword,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:wild_sword

## --- 重新给予玩家缺少的装备 ---
execute @a[scores={temp=1}] ~~~ function lib/supplier/items
scoreboard players set @a[scores={temp=!0}] temp 0
