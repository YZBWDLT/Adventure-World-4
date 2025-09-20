# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 1

## 开启对应关卡
execute if score temp.level settings matches 1 run function aw/levels/chapter1/level1/start
execute if score temp.level settings matches 2 run function aw/levels/chapter1/level2/start
execute if score temp.level settings matches 3 run function aw/levels/chapter1/level3/start

## 播放音乐
function aw/lib/events/play_music
