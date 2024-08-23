# ===== 生成洞穴蜘蛛 =====
# 等级 2

## --- 生成前2s ---

## 生成粒子警示玩家有怪物产生
execute @e[name=monsterSummonDelay,scores={time=35}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ particle aw:summon_spider_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=15}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ particle aw:summon_spider_particle ~~~
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ particle aw:summon_spider_particle ~~~

## --- 正式生成 ---

### 生成怪物
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ summon cave_spider ~~~ aw:level_2 "§a洞穴蜘蛛 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=2..}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ summon cave_spider ~~~ aw:level_3 "§b洞穴蜘蛛 | lv.3"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ summon cave_spider ~~~ aw:level_2 "§a洞穴蜘蛛 | lv.2"
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=caveSpider2Summoner] ~~~ summon cave_spider ~~~ aw:level_3 "§b洞穴蜘蛛 | lv.3"

### 移除生成器
execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ kill @e[name=caveSpider2Summoner]