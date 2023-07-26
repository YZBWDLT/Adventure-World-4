# 生成3级僵尸
summon minecraft:zombie ~~~ minecraft:as_adult "僵尸 | lv.3"
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.head 0 minecraft:iron_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.chest 0 minecraft:iron_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.legs 0 minecraft:iron_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.feet 0 minecraft:iron_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.weapon.mainhand 0 air
particle aw:summon_zombie_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1