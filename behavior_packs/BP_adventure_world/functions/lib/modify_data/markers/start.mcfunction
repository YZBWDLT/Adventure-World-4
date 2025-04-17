# ===== 标记操作 =====
# 在开始游戏时进行的标记操作

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · thisLevel -> prevLevel
# · nextLevel -> thisLevel

tag @e[tag=thisLevel] add prevLevel
tag @e[tag=thisLevel] remove thisLevel

tag @e[tag=nextLevel] add thisLevel
tag @e[tag=nextLevel] remove nextLevel
