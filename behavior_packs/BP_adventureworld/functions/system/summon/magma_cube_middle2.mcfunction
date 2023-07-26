# 生成1级蜘蛛
summon minecraft:magma_cube ~~~ spawn_medium "中型岩浆怪 | lv.2"
particle aw:summon_magma_cube_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1
effect @e[x=~,y=~,z=~,r=1,type=magma_cube] resistance 1000 0 true