# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

# --- 岩浆涨落 ---

## 倒计时
execute @e[name=tick,scores={time=5}] ~~~ scoreboard players remove @e[family=blaze_king] temp3 1

## 在岩浆上涨剩余5秒前，警告玩家岩浆即将上涨以及涨幅
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp3=5}] ~~~ function lib/title
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp3=5}] ~~~ particle aw:lava_warning -78 -40 35
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp2=1..2,temp3=5}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§6岩浆即将上涨，请尽快躲到高处！"}]}
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp2=3,temp3=5}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c岩浆即将上涨2层，请尽快躲到高处！！！"}]}
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp3=1..5}] ~~~ execute @a ~~~ playsound bucket.fill_lava @s ~~~ 1 2 

## 在岩浆上涨剩余0秒后，按照Boss的血量生成岩浆
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp2=1..2,temp3=0}] ~~~ structure load 6_4_lava_1 -89 -40 21
execute @e[name=tick,scores={time=5}] ~~~ execute @e[family=blaze_king,scores={temp2=3,temp3=0}] ~~~ structure load 6_4_lava_2 -89 -40 21

## 当岩浆停留了5秒后，移除之并重置倒计时（随机在6~15s之间）
execute @e[family=blaze_king,scores={temp3=..-6}] ~~~ structure load 6_4_no_lava -89 -40 21
scoreboard players random @e[family=blaze_king,scores={temp3=..-6}] temp3 6 15

# --- 胜利判定 ---
# 当Boss被击杀后，立即结束

## execute unless entity @e[family=blaze_king] run kill @e[family=monster]
summon aw:marker haveNoBoss 75 -37 35
execute @e[family=blaze_king] ~~~ kill @e[name=haveNoBoss]
execute @e[name=haveNoBoss] ~~~ kill @e[family=monster]
