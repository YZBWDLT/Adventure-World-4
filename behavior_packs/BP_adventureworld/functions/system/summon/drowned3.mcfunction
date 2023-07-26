# 生成3级溺尸
summon minecraft:drowned ~~~ minecraft:as_adult "溺尸 | lv.3"
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.head 0 minecraft:iron_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.chest 0 minecraft:iron_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.legs 0 minecraft:iron_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.feet 0 minecraft:iron_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.weapon.mainhand 0 air
particle aw:summon_drowned_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1