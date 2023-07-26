# 生成2级蜘蛛
summon minecraft:spider "蜘蛛 | lv.2" ~~~
particle aw:summon_spider_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1
effect @e[x=~,y=~,z=~,r=1,type=spider] resistance 1000 0 true