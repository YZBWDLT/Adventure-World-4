# ===== 标记操作 =====
# 在游戏失败时进行的标记操作

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · prevLevel -> thisLevel
# · thisLevel -> nextLevel

tag @e[tag=thisLevel] add nextLevel
tag @e[tag=thisLevel] remove thisLevel

tag @e[tag=prevLevel] add thisLevel
tag @e[tag=prevLevel] remove prevLevel
