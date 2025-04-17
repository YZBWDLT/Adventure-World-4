# ===== 标记操作 =====
# 初始时创建标记

# 调用此方法时：
# · 执行者任意
# · 执行位置为本关的标记实体位置
# 输出结果：
# · 在执行位置新增 thisLevel

kill @e[tag=thisLevel]
summon aw:marker ~~~
tag @e[type=aw:marker,r=0.5] add thisLevel
