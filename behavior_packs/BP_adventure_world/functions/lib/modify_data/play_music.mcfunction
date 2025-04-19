# ===== 播放音乐 =====
# 当有玩家重新进入游戏、或进入新的场景后，则播放音乐

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# ——

# --- 默认时，停止所有音乐 ---
music stop

# --- 村庄剧情 ---
## 开始
execute if score chapter data matches 0 if score level data matches 1..2 run music play aw.music.village 1 0 loop
execute if score chapter data matches 0 if score level data matches 3 run music play aw.music.village.time_temple 1 0 loop
execute if score chapter data matches 0 if score level data matches 4..5 run music play aw.music.village.sword_trial_entrance 1 0 loop
## 结束
execute if score chapter data matches 10 if score level data matches 1..3 run music play aw.music.end 1 0 loop
execute if score chapter data matches 10 if score level data matches 4 run music play aw.music.village.sword_trial_entrance 1 0 loop

# --- 关卡 ---
## 普通关卡
execute if score chapter data matches 1 run music play aw.music.temple.desert 1 0 loop
execute if score chapter data matches 2 run music play aw.music.temple.jungle 1 0 loop
execute if score chapter data matches 3 run music play aw.music.temple.lake 1 0 loop
execute if score chapter data matches 4..5 run music play aw.music.temple.freeze 1 0 loop
execute if score chapter data matches 6 run music play aw.music.temple.mountain 1 0 loop
execute if score chapter data matches 7 run music play aw.music.temple.final 1 0 loop
## 7-0（剑之神殿）的特殊音乐
execute if score chapter data matches 7 if score level data matches 0 run music play aw.music.temple.sword 1 0 loop
## 7-4 ~ 7-5的特殊音乐
execute if score chapter data matches 7 if score level data matches 4..5 run music play aw.music.temple.final.level_4 1 0 loop
## BOSS关的特殊音乐（7-5仅第2波播放，存在前奏）
execute if score chapter data matches 2 if score level data matches 3 if score levelCompleted data matches 0 run music play aw.music.boss.skeleton_king 1 0 loop
execute if score chapter data matches 3 if score level data matches 4 if score levelCompleted data matches 0 run music play aw.music.boss.elder_guardian 1 0 loop
execute if score chapter data matches 4 if score level data matches 4 if score levelCompleted data matches 0 run music play aw.music.boss.random_monster 1 0 loop
execute if score chapter data matches 6 if score level data matches 4 if score levelCompleted data matches 0 run music play aw.music.boss.blaze_king 1 0 loop
execute if score chapter data matches 7 if score level data matches 5 if score levelCompleted data matches 0 if score wave data matches 2 run music play aw.music.boss.final_prelude 1 0 play_once
execute if score chapter data matches 7 if score level data matches 5 if score levelCompleted data matches 0 if score wave data matches 2 run music queue aw.music.boss.final 1 0 loop
