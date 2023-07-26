# 生成1级猪灵
summon minecraft:piglin_brute "猪灵蛮兵" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.head 0 minecraft:diamond_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.chest 0 minecraft:diamond_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.legs 0 minecraft:diamond_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.armor.feet 0 minecraft:diamond_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin_brute] slot.weapon.mainhand 0 minecraft:diamond_axe
particle aw:summon_piglin_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1