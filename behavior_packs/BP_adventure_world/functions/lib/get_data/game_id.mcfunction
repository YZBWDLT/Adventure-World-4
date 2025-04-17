# ===== 获取游戏 ID =====
# 返回包含章节、关卡和完成状态的三位数的临时变量 ID。该变量应当在使用后销毁。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · data.temp.gameId = data.levelCompleted + 10 * data.level + 100 * data.chapter

### 先相加个位数
scoreboard players operation temp.gameId data = levelCompleted data
### 获取十位数并相加
scoreboard players set temp.digit data 10
scoreboard players operation temp.digit data *= level data
scoreboard players operation temp.gameId data += temp.digit data
### 获取百位数并相加
scoreboard players set temp.digit data 100
scoreboard players operation temp.digit data *= chapter data
scoreboard players operation temp.gameId data += temp.digit data
### 移除临时变量
scoreboard players reset temp.digit data
