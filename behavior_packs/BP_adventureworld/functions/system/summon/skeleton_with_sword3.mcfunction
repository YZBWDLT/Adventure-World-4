# 生成2级骷髅
summon minecraft:skeleton "骷髅 | lv.3" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.head 0 minecraft:iron_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.chest 0 minecraft:iron_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.legs 0 minecraft:iron_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.feet 0 minecraft:iron_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.weapon.mainhand 0 minecraft:iron_sword
particle aw:summon_skeleton_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1