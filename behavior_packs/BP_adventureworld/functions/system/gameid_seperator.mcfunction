# ===== 关卡ID数字分离器 =====
# 调用本函数以分离一个关卡ID的百位数、十位数和个位数
# 得到的结果（百十个）分别记录到data.chapter、data.level和data.levelCompleted上

## --- 初始化 ---
scoreboard players set "10" temp 10
scoreboard players set "100" temp 100

## --- 个位数的获取 ---
## XYZ%10=XY......Z，%运算得到余数Z
scoreboard players operation @e[name=levelCompleted] data = @e[name=gameId] data
scoreboard players operation @e[name=levelCompleted] data %= "10" temp

## --- 十位数的获取 ---
## XYZ/10=XY.Z，因MC向下取整故得到XY，再利用XY%10=X......Y，%运算得到余数Y
scoreboard players operation @e[name=level] data = @e[name=gameId] data
scoreboard players operation @e[name=level] data /= "10" temp
scoreboard players operation @e[name=level] data %= "10" temp

## --- 百位数的获取 ---
## XYZ/100 = X.YZ，因MC向下取整，故得到X
scoreboard players operation @e[name=chapter] data = @e[name=gameId] data
scoreboard players operation @e[name=chapter] data /= "100" temp

## --- 移除辅助值 ---
scoreboard players reset "10" temp
scoreboard players reset "100" temp
