# ===== 不保留时间值 =====
# 用于在每次调用库函数时，事先声明不保留时间值。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · data.keepValue=0

scoreboard players set keepValue data 0
