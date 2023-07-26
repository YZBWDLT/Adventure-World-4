# 生成2级骷髅
summon minecraft:skeleton "骷髅 | lv.2" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.head 0 minecraft:leather_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.chest 0 minecraft:leather_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.legs 0 minecraft:leather_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.feet 0 minecraft:leather_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.weapon.mainhand 0 minecraft:bow
particle aw:summon_skeleton_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1