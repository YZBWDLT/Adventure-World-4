# 生成1级猪灵
summon minecraft:piglin "猪灵 | lv.1" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.head 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.chest 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.legs 0 air
replaceitem entity @e[x=~,y=~,z=~,r=1,type=piglin] slot.armor.feet 0 air
particle aw:summon_piglin_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1