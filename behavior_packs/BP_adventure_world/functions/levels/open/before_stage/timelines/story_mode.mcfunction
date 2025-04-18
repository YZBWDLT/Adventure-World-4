# ===== 玩家选择了剧情模式 =====

# --- 剧情 ---
execute if score timeline time matches 40 run tellraw @a {"rawtext":[{"text":"* 很久很久以前，一个强大的王国封印了一个恶魔。"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* 四位贤者守护着封印，防止恶魔再次降临。"}]}
## [200] 相机变换：续杯黑屏
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"* 就这样，贤者和恶魔都被锁入了永恒的时间，这个故事也逐渐被遗忘。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"* 直到......"}]}
## [400] 相机变换：续杯黑屏
## 停顿
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* 不知多久以后，封印松动，贤者和恶魔都开始苏醒。"}]}
## [600] 相机变换：续杯黑屏
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"* 空间贤者最先离开封印，独自破坏了恶魔的法力之源。"}]}
execute if score timeline time matches 740 run tellraw @a {"rawtext":[{"text":"* 其余贤者也接连觉醒，最终成功消灭了恶魔。"}]}
## [800] 相机变换：续杯黑屏
execute if score timeline time matches 840 run tellraw @a {"rawtext":[{"text":"* 但最初觉醒的空间贤者仍然不知去向，大家正在计划寻找......"}]}

# --- 停止音乐 ---
execute if score tick time matches 0 run music stop

# --- 相机变换 ---

## [200,400,600,800]续杯黑屏
execute if score timeline time matches 200 run camera @a fade time 0 10 0 color 0 0 0
execute if score timeline time matches 400 run camera @a fade time 0 10 0 color 0 0 0
execute if score timeline time matches 600 run camera @a fade time 0 10 0 color 0 0 0
execute if score timeline time matches 800 run camera @a fade time 0 10 0 color 0 0 0

# --- 剧情结束 ---
execute if score timeline time matches 900 run function levels/open/before_stage/complete
