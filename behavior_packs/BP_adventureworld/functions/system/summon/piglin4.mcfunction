# 生成1级猪灵
summon minecraft:piglin "猪灵 | lv.4" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.head 0 minecraft:diamond_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.chest 0 minecraft:diamond_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.legs 0 minecraft:diamond_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.feet 0 minecraft:diamond_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin,hasitem={item=golden_sword}] slot.weapon.mainhand 0 minecraft:diamond_sword
particle aw:summon_piglin_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1