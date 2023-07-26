# 生成1级尸壳
summon minecraft:husk "尸壳 | lv.1" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=husk] slot.armor.head 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=husk] slot.armor.chest 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=husk] slot.armor.legs 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=husk] slot.armor.feet 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=husk] slot.weapon.mainhand 0 air
particle aw:summon_husk_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1