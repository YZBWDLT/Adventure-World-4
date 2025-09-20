# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 2

## 开启对应关卡
execute if score temp.level settings matches 4 run function aw/levels/chapter2/level1/start
execute if score temp.level settings matches 5 run function aw/levels/chapter2/level2/start
execute if score temp.level settings matches 6 run function aw/levels/chapter2/level3/start

## 播放音乐
function aw/lib/events/play_music
