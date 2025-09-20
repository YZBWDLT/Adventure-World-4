# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 3

## 开启对应关卡
execute if score temp.level settings matches 7 run function aw/levels/chapter3/level1/start
execute if score temp.level settings matches 8 run function aw/levels/chapter3/level2/start
execute if score temp.level settings matches 9 run function aw/levels/chapter3/level3/start
execute if score temp.level settings matches 10 run function aw/levels/chapter3/level4/start

## 播放音乐
function aw/lib/events/play_music
