# ===== 获取玩家使用的游戏版本 =====
# 用于检测玩家使用的版本为国际版/网易版。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 若为国际版，输出data.client=0；若为网易版，输出data.client=1。

# --- 主体部分 ---

## 假定当前正在使用网易版
scoreboard players set client data 1
## 试图在记分板添加data.sb（这是屏蔽词，如果为网易版，该命令无法执行）
scoreboard players set sb data 0
## 若检测data.sb的分数，即上一条命令未被屏蔽，证明是国际版，更改data.client
execute if score sb matches 0 run scoreboard players set client data 0
## 移除data.sb
scoreboard players reset sb data
