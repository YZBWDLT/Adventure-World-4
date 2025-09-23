# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 6

## 开启对应关卡
execute if score level settings matches 15 run function aw/levels/chapter6/level1/start
execute if score level settings matches 16 run function aw/levels/chapter6/level2/start
execute if score level settings matches 17 run function aw/levels/chapter6/level3/start
execute if score level settings matches 18 run function aw/levels/chapter6/level4/start

## 播放音乐
function aw/lib/events/play_music
