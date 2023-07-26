# 生成1级骷髅
summon minecraft:skeleton ~~~ * "骷髅 | lv.1"
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.head 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.chest 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.legs 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.armor.feet 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=skeleton] slot.weapon.mainhand 0 minecraft:bow
particle aw:summon_skeleton_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1