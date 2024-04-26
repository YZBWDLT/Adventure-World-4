# ===== 召唤怪物 =====
# 一阶段

# --- 启用怪物的生成延迟 ---
function lib/states/monster_summon_delay/enable_40ticks

# --- 选定生成位置和生成类型 ---
summon aw:marker "temp" -225 -48 44
summon aw:marker "temp" -225 -48 44
summon aw:marker "temp" -225 -48 44

## 选定位置
execute @e[name=temp] ~~~ scoreboard players random @s temp 0 14
execute @e[name=temp,scores={temp=0}] ~~~ tp @s -212 -49 31
execute @e[name=temp,scores={temp=1}] ~~~ tp @s -225 -49 31
execute @e[name=temp,scores={temp=2}] ~~~ tp @s -238 -49 31
execute @e[name=temp,scores={temp=3}] ~~~ tp @s -233 -49 39
execute @e[name=temp,scores={temp=4}] ~~~ tp @s -225 -48 39
execute @e[name=temp,scores={temp=5}] ~~~ tp @s -217 -49 36
execute @e[name=temp,scores={temp=6}] ~~~ tp @s -219 -49 44
execute @e[name=temp,scores={temp=7}] ~~~ tp @s -230 -48 44
execute @e[name=temp,scores={temp=8}] ~~~ tp @s -238 -49 44
execute @e[name=temp,scores={temp=9}] ~~~ tp @s -232 -49 51
execute @e[name=temp,scores={temp=10}] ~~~ tp @s -225 -48 48
execute @e[name=temp,scores={temp=11}] ~~~ tp @s -218 -49 51
execute @e[name=temp,scores={temp=12}] ~~~ tp @s -213 -48 56
execute @e[name=temp,scores={temp=13}] ~~~ tp @s -225 -49 57
execute @e[name=temp,scores={temp=14}] ~~~ tp @s -238 -48 57

## 选定类型
execute @e[name=temp] ~~~ scoreboard players random @s temp2 1 100

# --- 生成怪物 ---

## 组别1：带盾僵尸 *4 | 权重 4
execute @e[family=evoker,scores={temp=1..4}] ~~~ execute @e[name=temp] ~~~ summon aw:marker "zombie1ShieldSummoner" ~~~

## 组别2：骷髅[3级]/流浪者[3级]/僵尸[4级]/小僵尸[4级]/僵尸猪灵[4级] *4 | 权重 4
execute @e[family=evoker,scores={temp=5..8}] ~~~ execute @e[name=temp,scores={temp2=1..20}] ~~~ summon aw:marker "zombie4Summoner" ~~~
execute @e[family=evoker,scores={temp=5..8}] ~~~ execute @e[name=temp,scores={temp2=21..40}] ~~~ summon aw:marker "zombieBaby4Summoner" ~~~
execute @e[family=evoker,scores={temp=5..8}] ~~~ execute @e[name=temp,scores={temp2=41..60}] ~~~ summon aw:marker "zombifiedPiglin4Summoner" ~~~
execute @e[family=evoker,scores={temp=5..8}] ~~~ execute @e[name=temp,scores={temp2=61..80}] ~~~ summon aw:marker "skeleton3Summoner" ~~~
execute @e[family=evoker,scores={temp=5..8}] ~~~ execute @e[name=temp,scores={temp2=81..100}] ~~~ summon aw:marker "stray3Summoner" ~~~

## 组别3：猪灵[4级]/疣猪兽[3级] *4 | 权重 4
execute @e[family=evoker,scores={temp=9..12}] ~~~ execute @e[name=temp,scores={temp2=1..80}] ~~~ summon aw:marker "piglin4Summoner" ~~~
execute @e[family=evoker,scores={temp=9..12}] ~~~ execute @e[name=temp,scores={temp2=81..100}] ~~~ summon aw:marker "hoglin3Summoner" ~~~

## 组别4：岩浆怪 *4 | 权重 4
execute @e[family=evoker,scores={temp=13..16}] ~~~ execute @e[name=temp,scores={temp2=1..85}] ~~~ summon aw:marker "magmaCubeSmallSummoner" ~~~
execute @e[family=evoker,scores={temp=13..16}] ~~~ execute @e[name=temp,scores={temp2=86..98}] ~~~ summon aw:marker "magmaCubeMediumSummoner" ~~~
execute @e[family=evoker,scores={temp=13..16}] ~~~ execute @e[name=temp,scores={temp2=99..100}] ~~~ summon aw:marker "magmaCubeLargeSummoner" ~~~

## 组别5：蜘蛛[4级]/洞穴蜘蛛[4级]/蠹虫[4级] | 权重 4
execute @e[family=evoker,scores={temp=17..20}] ~~~ execute @e[name=temp,scores={temp2=1..33}] ~~~ summon aw:marker "spider4Summoner" ~~~
execute @e[family=evoker,scores={temp=17..20}] ~~~ execute @e[name=temp,scores={temp2=34..66}] ~~~ summon aw:marker "caveSpider4Summoner" ~~~
execute @e[family=evoker,scores={temp=17..20}] ~~~ execute @e[name=temp,scores={temp2=67..100}] ~~~ summon aw:marker "silverfish4Summoner" ~~~

# --- 移除辅助实体 ---
kill @e[name=temp]