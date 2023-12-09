# ===== 三位数数字位数分离器 =====
# 调用本函数以分离一个三位数的百位数、十位数和个位数
# 在调用此函数前，需要确保该目标在temp记分板上有值并使本命令为该目标执行，得到的结果（百十个）分别记录到temp.@s、temp2.@s和temp3.@s上

## --- 初始化 ---
scoreboard players set "10" temp 10
scoreboard players set "100" temp 100

## --- 个位数的获取 ---
## XYZ%10=XY......Z，%运算得到余数Z
scoreboard players operation @s temp3 = @s temp
scoreboard players operation @s temp3 %= "10" temp

## --- 十位数的获取 ---
## XYZ/10=XY.Z，因MC向下取整故得到XY，再利用XY%10=X......Y，%运算得到余数Y
scoreboard players operation @s temp2 = @s temp
scoreboard players operation @s temp2 /= "10" temp
scoreboard players operation @s temp2 %= "10" temp

## --- 百位数的获取 ---
## XYZ/100 = X.YZ，因MC向下取整，故得到X
## 百位数最后获取，因为它将改变temp.@s上的原值
scoreboard players operation @s temp /= "100" temp

## --- 移除辅助值 ---
scoreboard players reset "10" temp
scoreboard players reset "100" temp
