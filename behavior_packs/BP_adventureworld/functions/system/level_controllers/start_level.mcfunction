# ===== 开始游戏控制器 =====
# 使用该函数以控制开始游戏的时机。
# 当玩家进入到新区域的时候则触发开始函数。
# 判断逻辑：当处于“未在游戏中”的玩家进入到了超前于关卡进度的区域中，则触发新区域的开始游戏函数。
# 在【开始游戏控制器】执行之前的【防退出控制器】已对玩家的状态值进行了修正，故无需担心玩家数据的异常情况。
# 【该函数需要在“未在游戏中”的状态下执行】

# --- 获取玩家的章节关卡数和现在的关卡进度数据大小 ---
# （其中判断关卡进度数据已在该函数执行之前予以检测）
execute @a ~~~ function lib/get_data/entity_location
execute @a ~~~ scoreboard players operation @s temp = @s position
execute @a ~~~ function lib/get_data/3_digit_seperator

# --- 判断玩家的区域是否超前于关卡进度 ---
# 超前的判定方式：
# 1. 玩家所在区域的章节 - 关卡进度的章节 = 1
# 2. 玩家所在区域的章节 = 关卡进度的章节，但玩家所在区域的关卡数 - 关卡进度的关卡数 = 1
# 一旦玩家被判定为是“超前”的，那么设置Ta的游戏状态为“正在游戏中”。
# “超前”的判定应该是连续的，不能出现例如玩家在1-3时进入3-0会成功触发的情况

## 对玩家和关卡进度进行数据处理
## 将玩家的数据和对应的关卡进度数据做减法，如果玩家的数据大于等于1则是“超前”的
execute @a ~~~ scoreboard players operation @s temp2 -= @e[name=chapter] data
execute @a ~~~ scoreboard players operation @s temp3 -= @e[name=level] data

## 第1类“超前”的判定
scoreboard players set @a[scores={temp2=1}] isAlive 3
## 第2类“超前”的判定
scoreboard players set @a[scores={temp2=0,temp3=1}] isAlive 3

# --- 触发游戏开始函数 ---
# 当玩家的游戏状态被更改为“正在游戏中”时，此时关卡状态仍为“未在游戏中”。
# 利用这一点差异结合玩家所在位置可以触发对应的函数。
# 请注意：因为先于该函数执行的【防退出控制器】已对玩家状态值做了修正，因此无需担心过多的逻辑问题，
# 假设在本模块运行时所有玩家的数据均为正常的（即玩家的章节关卡数据均落后或等于关卡进度的章节关卡数据，且均处于“未在游戏中”的状态）

execute @e[name=gameId,scores={data=101..109}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter1/1_1/start_level
execute @e[name=gameId,scores={data=111..119}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter1/1_2/start_level
execute @e[name=gameId,scores={data=121..129}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter1/1_3/start_level
execute @e[name=gameId,scores={data=131..139}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter2/2_0/start
execute @e[name=gameId,scores={data=201..209}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter2/2_1/start_level
execute @e[name=gameId,scores={data=211..219}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter2/2_2/start_level
execute @e[name=gameId,scores={data=221..229}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter2/2_3/start_level
execute @e[name=gameId,scores={data=231..239}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter3/3_0/start
execute @e[name=gameId,scores={data=301..309}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter3/3_1/start_level
execute @e[name=gameId,scores={data=311..319}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter3/3_2/start_level
execute @e[name=gameId,scores={data=321..329}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter3/3_3/start_level
execute @e[name=gameId,scores={data=331..339}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter3/3_4/start_level
execute @e[name=gameId,scores={data=341..349}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter4/4_0/start
execute @e[name=gameId,scores={data=401..409}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter4/4_1/start_level
execute @e[name=gameId,scores={data=411..419}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter4/4_2/start_level
execute @e[name=gameId,scores={data=421..429}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter4/4_3/start_level
execute @e[name=gameId,scores={data=431..439}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter4/4_4/start_level
execute @e[name=gameId,scores={data=441..449}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter5/start
execute @e[name=gameId,scores={data=501..509}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter6/6_0/start
execute @e[name=gameId,scores={data=601..609}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter6/6_1/start_level
execute @e[name=gameId,scores={data=611..619}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter6/6_2/start_level
execute @e[name=gameId,scores={data=621..629}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter6/6_3/start_level
execute @e[name=gameId,scores={data=631..639}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter6/6_4/start_level
execute @e[name=gameId,scores={data=711..719}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter7/7_2/start_level
execute @e[name=gameId,scores={data=721..729}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter7/7_3/start_level
execute @e[name=gameId,scores={data=731..739}] ~~~ execute @a[scores={isAlive=3},c=1] ~~~ function levels/chapter7/7_4/start_level
