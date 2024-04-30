# ===== 第二波时间线 =====
# 本函数将每秒执行一次。
# 变量：
# 技能触发倒计时 - temp.timeline（范围 -1~，0=倒计时结束，-1=倒计时停止）
# 技能倒计时 - temp2.timeline（范围 -1~，0=倒计时结束，-1=倒计时停止）
# 触发的随机技能 - temp.@e[family=evoker]
# 逻辑：
# 技能触发倒计时为3~10秒，倒计时启动需要在技能结束后开始
# 技能触发倒计时结束之后进入技能阶段，技能结束后进入下一轮的技能触发倒计时
# 技能倒计时结束后，唤魔者召唤劫掠兽一齐现身并变为弱盾

# --- 倒计时计算 ---

## 技能触发倒计时与技能倒计时 | 技能触发倒计时必须在Boss为蓝盾的情况下执行
execute @e[family=evoker,scores={data=2}] ~~~ scoreboard players remove @e[name=timeline,scores={temp=0..}] temp 1
scoreboard players remove @e[name=timeline,scores={temp2=0..}] temp2 1

## 技能触发倒计时的重置 | 在技能触发倒计时和技能倒计时均停止后，进行一次随机
scoreboard players random @e[name=timeline,scores={temp=-1,temp2=..-1}] temp 2 5



# --- 执行技能前的准备 ---
# 当技能触发倒计时结束时触发

## 选定执行技能 | 在技能触发倒计时刚刚结束时，进行一次随机 | 随机范围 1~100
execute @e[name=timeline,scores={temp=0}] ~~~ scoreboard players random @e[family=evoker] temp 1 120

## 清除劫掠兽
execute @e[name=timeline,scores={temp=0}] ~~~ kill @e[family=ravager]

## 设定各个技能所对应的技能倒计时
### ~ 技能1：召唤怪物 ~
execute @e[family=evoker,scores={temp=1..60}] ~~~ scoreboard players set @e[name=timeline,scores={temp=0}] temp2 15
### ~ 技能2：空袭 ~
execute @e[family=evoker,scores={temp=61..80}] ~~~ scoreboard players set @e[name=timeline,scores={temp=0}] temp2 20
### ~ 技能3：岩浆上涨 ~
execute @e[family=evoker,scores={temp=81..100}] ~~~ scoreboard players set @e[name=timeline,scores={temp=0}] temp2 10
### ~ 技能4：回血 ~
execute @e[family=evoker,scores={temp=101..120}] ~~~ scoreboard players set @e[name=timeline,scores={temp=0}] temp2 2
### ~ 技能5：炙热火线 ~

## 设定各个技能所对应的标题内容
execute @e[name=timeline,scores={temp=0}] ~~~ function lib/title
### ~ 技能1：召唤怪物 ~
execute @e[family=evoker,scores={temp=1..60}] ~~~ execute @e[name=timeline,scores={temp=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c当心！即将有怪物生成！"}]}
### ~ 技能2：空袭 ~
execute @e[family=evoker,scores={temp=61..80}] ~~~ execute @e[name=timeline,scores={temp=0}] ~~~ execute @e[name=isNetease,scores={data=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意头顶！及时躲到掩体下面！"}]}
execute @e[family=evoker,scores={temp=61..80}] ~~~ execute @e[name=timeline,scores={temp=1}] ~~~ execute @e[name=isNetease,scores={data=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意头顶！及时躲到掩体下方！"}]}
### ~ 技能3：岩浆上涨 ~
execute @e[family=evoker,scores={temp=81..100}] ~~~ execute @e[name=timeline,scores={temp=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c熔岩即将淹没平台！！迅速躲到更高的地方！"}]}
### ~ 技能4：回血 ~
execute @e[family=evoker,scores={temp=101..120}] ~~~ execute @e[name=timeline,scores={temp=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c唤魔法师已恢复了一些血量！"}]}



# --- 执行技能 ---
# 当技能触发倒计时停止后触发

## 执行特定技能
### ~ 技能1：召唤怪物 ~
execute @e[family=evoker,scores={temp=1..60}] ~~~ execute @e[name=timeline,scores={temp2=15}] ~~~ function levels/chapter7/7_5/boss_skills/skill_1_2
### ~ 技能2：空袭 ~
execute @e[family=evoker,scores={temp=61..80}] ~~~ execute @e[name=timeline,scores={temp2=!0}] ~~~ function levels/chapter7/7_5/boss_skills/skill_2_2
### ~ 技能3：岩浆上涨 ~
execute @e[family=evoker,scores={temp=81..100}] ~~~ execute @e[name=timeline,scores={temp2=6..10}] ~~~ execute @a ~~~ playsound bucket.fill_lava @s ~~~ 1 2 
execute @e[family=evoker,scores={temp=81..100}] ~~~ execute @e[name=timeline,scores={temp2=5}] ~~~ structure load 7_5_phase2_lava -246 -54 23 0_degrees none layer_by_layer 3.00
execute @e[family=evoker,scores={temp=81..100}] ~~~ execute @e[name=timeline,scores={temp2=3..5}] ~~~ execute @a ~~~ playsound bucket.empty_lava @s ~~~ 1 0.75
execute @e[family=evoker,scores={temp=81..100}] ~~~ execute @e[name=timeline,scores={temp2=0}] ~~~ structure load 7_5_phase2 -246 -54 23
### ~ 技能4：回血 ~
execute @e[family=evoker,scores={temp=101..120}] ~~~ execute @e[name=timeline,scores={temp2=2}] ~~~ effect @s instant_health 1 4 true



# --- 执行技能完毕后 ---
# 当技能倒计时结束后触发

## 重置随机技能
execute @e[name=timeline,scores={temp2=0}] ~~~ scoreboard players set @e[family=evoker] temp 0

## 生成一只劫掠兽并令Boss骑上去
### 获取难度，以生成合适的劫掠兽
execute @e[name=timeline,scores={temp2=0}] ~~~ function lib/get_data/difficulty
### 按照难度生成劫掠兽
execute @e[name=timeline,scores={temp2=0}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ summon ravager -225 -48 44 aw:level_1 "§c劫掠兽 | lv.1"
execute @e[name=timeline,scores={temp2=0}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ summon ravager -225 -48 44 aw:level_2 "§c劫掠兽 | lv.2"
execute @e[name=timeline,scores={temp2=0}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ summon ravager -225 -48 44 aw:level_3 "§c劫掠兽 | lv.3"
execute @e[name=timeline,scores={temp2=0}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ summon ravager -225 -48 44 aw:level_4 "§c劫掠兽 | lv.4"
### 建立骑乘关系
execute @e[name=timeline,scores={temp2=0}] ~~~ ride @e[family=evoker] start_riding @e[family=ravager,c=1]

## 标题与音效提醒
execute @e[name=timeline,scores={temp2=0}] ~~~ function lib/title
execute @e[name=timeline,scores={temp2=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§b唤魔法师的盾变弱了！"}]}
execute @e[name=timeline,scores={temp2=0}] ~~~ execute @a ~~~ playsound beacon.deactivate @s

## 将所有带盾实体都改为弱盾状态
execute @e[name=timeline,scores={temp2=0}] ~~~ event entity @e[family=monster] have_weak_shield



# --- 未在技能期时 ---

## 移除temp实体和生成器
execute @e[name=timeline,scores={temp2=-1}] ~~~ kill @e[name=temp]
execute @e[name=timeline,scores={temp2=-1}] ~~~ kill @e[family=summoner,name=!evokerSummoner]
