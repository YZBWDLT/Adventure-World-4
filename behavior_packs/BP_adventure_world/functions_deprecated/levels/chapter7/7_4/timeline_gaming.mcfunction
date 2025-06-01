# ===== 游戏过程中的时间线 =====

# --- 在第二波和第五波时触发对话 ---

## 玩家使用不同的模式时，触发不同的对话
## active.dialogue = 6代表该对话已触发过，阻止再次触发
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ function lib/states/dialogue/enable
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ scoreboard players set @e[name=dialogue] active 3
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ execute @e[name=storyMode,scores={data=0}] ~~~ scoreboard players set @e[name=dialogue] active 4
execute @e[name=wave,scores={data=5}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ scoreboard players set @e[name=dialogue] time 0
execute @e[name=wave,scores={data=5}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ scoreboard players set @e[name=dialogue,scores={active=!6}] active 5

## 当dialogue启用后，人为流逝时间
scoreboard players add @e[name=dialogue,scores={active=3..,active=!6}] time 1

# --- 烈焰王的挣扎 ---

## 检测到烈焰王准备生成怪物时，生成2个骷髅敢死队
execute @e[name=tick,scores={time=6}] ~~~ execute @e[family=blaze_king,scores={temp=1}] ~~~ summon aw:marker ~~-1~-1 "aw:as_summoner" "skeletonWithSword1Summoner"
execute @e[name=tick,scores={time=6}] ~~~ execute @e[family=blaze_king,scores={temp=1}] ~~~ summon aw:marker ~~-1~1 "aw:as_summoner" "skeletonWithSword1Summoner"
execute @e[name=tick,scores={time=6}] ~~~ execute @e[family=blaze_king,scores={temp=1}] ~~~ function lib/states/monster_summon_delay/enable_40ticks
## 阻止烈焰王传送
execute @e[name=tick,scores={time=6}] ~~~ scoreboard players set @e[family=blaze_king] time 114514

# --- 双重生点 ---
# 仅当在关卡中时执行

## 每秒随机设定一次重生点
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players random @e[family=respawner] temp 0 1
## 按照temp.@s随机设定重生点
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=0}] -248 -5 104
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=1}] -222 -12 86

## 将高位重生点上的玩家传送到低位重生点上
tp @a[scores={isAlive=0},x=-251,y=-11,z=99,dx=12,dy=10,dz=17,rx=-85,rxm=-90] -222 -12 86 ~180 45
## 将低位重生点上的玩家传送到高位重生点上
tp @a[scores={isAlive=0},x=-229,y=-13,z=81,dx=10,dy=7,dz=10,rx=-85,rxm=-90] -248 -5 104 ~180 0
