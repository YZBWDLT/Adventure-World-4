# ===== 获取游戏 ID =====
# 返回包含章节、关卡和完成状态的三位数的临时变量 ID。该变量应当在使用后销毁。
# 输出结果为：data.temp.gameId = data.levelCompleted + 10 * data.level + 100 * data.chapter
# 调用此方法时：无需修饰。


scoreboard players operation temp.gameId data = levelCompleted data

scoreboard players set temp.digit data 10
scoreboard players operation temp.digit data *= level data
scoreboard players operation temp.gameId data += temp.digit data

scoreboard players set temp.digit data 100
scoreboard players operation temp.digit data *= chapter data
scoreboard players operation temp.gameId data += temp.digit data

scoreboard players reset temp.digit data
