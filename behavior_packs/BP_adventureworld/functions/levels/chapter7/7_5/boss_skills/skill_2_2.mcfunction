# ===== 火球空袭 =====

# --- 准备工作 ---
## 召唤辅助实体
execute @e[name=timeline,scores={temp2=20}] ~~~ function levels/chapter7/7_5/boss_skills/skill_2_temp_entity

# --- 第一轮 ---
## 出现掩体
execute @e[name=timeline,scores={temp2=20}] ~~~ structure load 7_5_shelter -238 -45 31 0_degrees none false true 8.00
execute @e[name=timeline,scores={temp2=20}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2
## 音效提醒
execute @e[name=timeline,scores={temp2=17..19}] ~~~ function lib/title
execute @e[name=timeline,scores={temp2=17..19}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c第 1 次攻击"}]}
execute @e[name=timeline,scores={temp2=17..19}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
## 召唤火球
execute @e[name=timeline,scores={temp2=16}] ~~~ execute @e[name=temp] ~~~ summon aw:fireball ~~~
execute @e[name=timeline,scores={temp2=16}] ~~~ execute @a ~~~ playsound mob.ghast.fireball @s ~~~
## 伤害判定
execute @e[name=timeline,scores={temp2=15}] ~~~ scoreboard players set @a temp 0
execute @e[name=timeline,scores={temp2=15}] ~~~ scoreboard players set @e[family=monster,family=!evoker] temp 0
execute @e[name=timeline,scores={temp2=15}] ~~~ execute @a ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=15}] ~~~ execute @e[family=monster,family=!evoker] ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=15}] ~~~ damage @e[scores={temp=0}] 25 entity_explosion
execute @e[name=timeline,scores={temp2=15}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={temp2=15}] ~~~ execute @e[type=aw:fireball] ~~~ particle aw:explosion ~~~
execute @e[name=timeline,scores={temp2=15}] ~~~ kill @e[type=aw:fireball]
## 破坏掩体
execute @e[name=timeline,scores={temp2=14}] ~~~ fill -238 -45 31 -212 -45 57 air [] destroy

# --- 第二轮 ---
## 出现掩体
execute @e[name=timeline,scores={temp2=13}] ~~~ structure load 7_5_shelter -238 -45 31 0_degrees none false true 5.00
execute @e[name=timeline,scores={temp2=13}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2
## 音效提醒
execute @e[name=timeline,scores={temp2=10..12}] ~~~ function lib/title
execute @e[name=timeline,scores={temp2=10..12}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c第 2 次攻击"}]}
execute @e[name=timeline,scores={temp2=10..12}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
## 召唤火球
execute @e[name=timeline,scores={temp2=9}] ~~~ execute @e[name=temp] ~~~ summon aw:fireball ~~~
execute @e[name=timeline,scores={temp2=9}] ~~~ execute @a ~~~ playsound mob.ghast.fireball @s ~~~
## 伤害判定
execute @e[name=timeline,scores={temp2=8}] ~~~ scoreboard players set @a temp 0
execute @e[name=timeline,scores={temp2=8}] ~~~ scoreboard players set @e[family=monster,family=!evoker] temp 0
execute @e[name=timeline,scores={temp2=8}] ~~~ execute @a ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=8}] ~~~ execute @e[family=monster,family=!evoker] ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=8}] ~~~ damage @e[scores={temp=0}] 25 entity_explosion
execute @e[name=timeline,scores={temp2=8}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={temp2=8}] ~~~ execute @e[type=aw:fireball] ~~~ particle aw:explosion ~~~
execute @e[name=timeline,scores={temp2=8}] ~~~ kill @e[type=aw:fireball]
## 破坏掩体
execute @e[name=timeline,scores={temp2=7}] ~~~ fill -238 -45 31 -212 -45 57 air [] destroy

# --- 第三轮 ---
## 出现掩体
execute @e[name=timeline,scores={temp2=6}] ~~~ structure load 7_5_shelter -238 -45 31 0_degrees none false true 2.00
execute @e[name=timeline,scores={temp2=6}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2
## 音效提醒
execute @e[name=timeline,scores={temp2=4..5}] ~~~ function lib/title
execute @e[name=timeline,scores={temp2=4..5}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c第 3 次攻击"}]}
execute @e[name=timeline,scores={temp2=4..5}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
## 召唤火球
execute @e[name=timeline,scores={temp2=3}] ~~~ execute @e[name=temp] ~~~ summon aw:fireball ~~~
execute @e[name=timeline,scores={temp2=3}] ~~~ execute @a ~~~ playsound mob.ghast.fireball @s ~~~
## 伤害判定
execute @e[name=timeline,scores={temp2=2}] ~~~ scoreboard players set @a temp 0
execute @e[name=timeline,scores={temp2=2}] ~~~ scoreboard players set @e[family=monster,family=!evoker] temp 0
execute @e[name=timeline,scores={temp2=2}] ~~~ execute @a ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=2}] ~~~ execute @e[family=monster,family=!evoker] ~~~ detect ~ -45 ~ stained_glass -1 scoreboard players set @s[x=~,y=-44,z=~,dx=0,dy=-20,dz=0] temp 1
execute @e[name=timeline,scores={temp2=2}] ~~~ damage @e[scores={temp=0}] 25 entity_explosion
execute @e[name=timeline,scores={temp2=2}] ~~~ execute @a ~~~ playsound random.explode @s
execute @e[name=timeline,scores={temp2=2}] ~~~ execute @e[type=aw:fireball] ~~~ particle aw:explosion ~~~
execute @e[name=timeline,scores={temp2=2}] ~~~ kill @e[type=aw:fireball]
## 破坏掩体
execute @e[name=timeline,scores={temp2=1}] ~~~ fill -238 -45 31 -212 -45 57 air [] destroy

# --- 技能结束 ---
## 清除辅助实体
execute @e[name=timeline,scores={temp2=1}] ~~~ kill @e[name=temp]
