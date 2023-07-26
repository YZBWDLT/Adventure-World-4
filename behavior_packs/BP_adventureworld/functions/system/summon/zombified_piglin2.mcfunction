# 生成2级僵尸猪灵
summon minecraft:zombie_pigman "僵尸猪灵 | lv.2" ~~~
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.head 0 minecraft:golden_helmet
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.chest 0 minecraft:golden_chestplate
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.legs 0 minecraft:golden_leggings
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.armor.feet 0 minecraft:golden_boots
replaceitem entity @e[x=~,y=~,z=~,r=1,type=zombie_pigman] slot.weapon.mainhand 0 minecraft:golden_sword
particle aw:summon_zombified_piglin_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1