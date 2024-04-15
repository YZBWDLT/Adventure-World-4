# ===== 音乐控制器 =====
# 使用此函数以在特定关卡下播放音乐。在检测到有玩家进入游戏后，或进入新的场景后执行。

# --- 按照关卡进度播放音乐 ---

## 村庄剧情
execute @e[name=level,scores={data=3..7,data=!5}] ~~~ music play aw.music.village 1 0 loop
execute @e[name=level,scores={data=5}] ~~~ music play aw.music.village.time_temple 1 0 loop
execute @e[name=level,scores={data=8..9}] ~~~ music play aw.music.village.sword_trial_entrance 1 0 loop

execute @e[name=level,scores={data=99}] ~~~ music play aw.music.village.sword_trial_entrance 1 0 loop

## 普通关卡
execute @e[name=level,scores={data=100..199}] ~~~ music play aw.music.temple.desert 1 0 loop
execute @e[name=level,scores={data=200..299,data=!230}] ~~~ music play aw.music.temple.jungle 1 0 loop
execute @e[name=level,scores={data=300..399,data=!340}] ~~~ music play aw.music.temple.lake 1 0 loop
execute @e[name=level,scores={data=400..599,data=!440}] ~~~ music play aw.music.temple.freeze 1 0 loop
execute @e[name=level,scores={data=600..699,data=!640}] ~~~ music play aw.music.temple.mountain 1 0 loop
execute @e[name=level,scores={data=709..731,data=!750}] ~~~ music play aw.music.temple.final 1 0 loop
execute @e[name=level,scores={data=740..741,data=!750}] ~~~ music play aw.music.temple.final.level_4 1 0 loop

## 剑之神殿
execute @e[name=level,scores={data=700..708,data=!750}] ~~~ music play aw.music.temple.sword 1 0 loop

## BOSS关卡
execute @e[name=level,scores={data=230}] ~~~ music play aw.music.boss.skeleton_king 1 0 loop
execute @e[name=level,scores={data=340}] ~~~ music play aw.music.boss.elder_guardian 1 0 loop
execute @e[name=level,scores={data=440}] ~~~ music play aw.music.boss.random_monster 1 0 loop
execute @e[name=level,scores={data=640}] ~~~ music play aw.music.boss.blaze_king 1 0 loop
execute @e[name=level,scores={data=750}] ~~~ music play aw.music.boss.final 1 0 loop

## 结束后
execute @e[name=level,scores={data=1001..1003}] ~~~ music play aw.music.end 1 0 loop
execute @e[name=level,scores={data=1004}] ~~~ music play aw.music.village.sword_trial_entrance 1 0 loop
