execute @a ~~~ function methods/get_entity_location
execute @a ~~~ scoreboard players operation @s temp = @s inLevelArea
execute @a ~~~ function methods/3_digit_seperator

# --- 判断玩家的区域是否超前于关卡进度 ---
# 超前的判定方式：
# 1. 玩家所在区域的章节 - 关卡进度的章节 = 1
# 2. 玩家所在区域的章节 = 关卡进度的章节，但玩家所在区域的关卡数 - 关卡进度的关卡数 = 1
# 一旦玩家被判定为是“超前”的，那么设置Ta的游戏状态为“正在游戏中”。
# “超前”的判定应该是连续的，不能出现例如玩家在1-3时进入3-0会成功触发的情况

## 对玩家和关卡进度进行数据处理
## 将玩家的数据和对应的关卡进度数据做减法，如果玩家的数据大于等于1则是“超前”的
execute @a ~~~ scoreboard players operation @s temp2 -= @e[name=level] temp
execute @a ~~~ scoreboard players operation @s temp3 -= @e[name=level] temp2

## 第1类“超前”的判定
scoreboard players set @a[scores={temp2=1}] isAlive 1
## 第2类“超前”的判定
scoreboard players set @a[scores={temp2=0,temp3=1}] isAlive 1

tellraw @s {"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}
tellraw @s {"rawtext":[{"score":{"objective":"temp3","name":"@s"}}]}
