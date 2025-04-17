# ===== 位置检测器 =====
# 返回实体目前所处的位置。

# 调用此方法时：
# · 执行者为指定玩家
# · 执行位置为该玩家所处的位置
# 输出结果：
# · chapter.@s=(所处章节区域)
# · level.@s=(所处章节的对应关卡区域)

# --- 先判断玩家处于第几章的区域 ---
execute if entity @s[x=0,y=0,z=0,dx=0,dy=0,dz=0] run scoreboard players set @s chapter 1

# --- 再判断玩家处于该章节的哪个关卡区域 ---
execute if score @s chapter matches 1 if entity @s[x=0,y=0,z=0,dx=0,dy=0,dz=0] run scoreboard players set @s level 0
