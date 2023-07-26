# 生成2级流浪者
summon minecraft:stray "流浪者 | lv.2" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.head 0 minecraft:leather_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.chest 0 minecraft:leather_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.legs 0 minecraft:leather_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.armor.feet 0 minecraft:leather_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=stray] slot.weapon.mainhand 0 minecraft:bow
particle aw:summon_stray_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1