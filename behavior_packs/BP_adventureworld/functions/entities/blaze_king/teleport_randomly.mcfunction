# ===== 随机传送 =====
# 将自己传送到任意的一个randomTeleporter上

## 倒计时
scoreboard players remove @s time 1

## 此处必须加上type，以指定@r指代的是标记实体而非玩家
execute @s[scores={time=0}] ~~~ tp @s @r[type=aw:marker,family=random_teleporter]

## 重置时间
scoreboard players random @s[scores={time=!1..25}] time 20 25
