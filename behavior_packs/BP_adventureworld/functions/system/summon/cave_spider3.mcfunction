# 生成1级蜘蛛
summon minecraft:cave_spider "洞穴蜘蛛 | lv.3" ~~~
particle aw:summon_spider_particle ~~~
playsound mob.evocation_illager.prepare_attack @a ~~~ 1
effect @e[x=~,y=~,z=~,r=1,type=cave_spider] resistance 1000 1 true