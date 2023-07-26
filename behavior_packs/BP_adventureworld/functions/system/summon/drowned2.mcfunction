# 生成2级溺尸
summon minecraft:drowned ~~~ minecraft:as_adult "溺尸 | lv.2"
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.head 0 minecraft:leather_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.chest 0 minecraft:leather_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.legs 0 minecraft:leather_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.armor.feet 0 minecraft:leather_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=drowned] slot.weapon.mainhand 0 air
particle aw:summon_drowned_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1