# ===== 获取信息板类型 =====
# 按照玩家所处关卡，返回信息板类型 data.temp.infoboardType。
# 调用此方法时：无需修饰。

# --- 空闲时的信息板 ---
scoreboard players set temp.infoboardType data 0

# --- 战斗时的信息板 ---
## 标准状态
execute if score levelCompleted data matches 0 unless score level data matches 0 run scoreboard players set temp.infoboardType data 1
## 4-4
execute if score temp.infoboardType data matches 1 if score chapter data matches 4 if score level data matches 4 run scoreboard players set temp.infoboardType data 2
## 6-4
execute if score temp.infoboardType data matches 1 if score chapter data matches 6 if score level data matches 4 run scoreboard players set temp.infoboardType data 3
## 7-5
execute if score temp.infoboardType data matches 1 if score chapter data matches 7 if score level data matches 5 run scoreboard players set temp.infoboardType data 4

# --- 隐藏信息板 ---
## 7-0
execute if score chapter data matches 7 if score level data matches 0 run scoreboard players set temp.infoboardType data -1
