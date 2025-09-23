# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 7

## 开启对应关卡
execute if score level settings matches 19 run function aw/levels/chapter7/level1/start
execute if score level settings matches 20 run function aw/levels/chapter7/level2/start
execute if score level settings matches 21 run function aw/levels/chapter7/level3/start
execute if score level settings matches 22 run function aw/levels/chapter7/level4/start
execute if score level settings matches 23 run function aw/levels/chapter7/level5/start

## 播放音乐
function aw/lib/events/play_music
