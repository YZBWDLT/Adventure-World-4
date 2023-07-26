# 生成小僵尸
summon minecraft:zombie ~~~ minecraft:as_baby "小僵尸 | lv.2"
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.head 0 minecraft:leather_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.chest 0 minecraft:leather_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.legs 0 minecraft:leather_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.armor.feet 0 minecraft:leather_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie] slot.weapon.mainhand 0 air
particle aw:summon_zombie_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1