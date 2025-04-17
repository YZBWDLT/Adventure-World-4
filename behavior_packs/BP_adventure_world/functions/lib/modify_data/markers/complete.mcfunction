# ===== 标记操作 =====
# 在游戏成功时进行的标记操作

# 调用此方法时：
# · 执行者任意
# · 执行位置为下一关的标记实体位置
# 输出结果：
# · 移除prevLevel
# · 在执行位置新增 nextLevel

kill @e[tag=prevLevel]
kill @e[tag=nextLevel]
summon aw:marker ~~~
tag @e[type=aw:marker,r=0.5] add nextLevel
