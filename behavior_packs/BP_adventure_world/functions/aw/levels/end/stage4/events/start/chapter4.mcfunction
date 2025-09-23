# ===== 开启单关卡试炼 =====

## 设置 ID
scoreboard players set chapter data 4

## 开启对应关卡
execute if score level settings matches 11 run function aw/levels/chapter4/level1/start
execute if score level settings matches 12 run function aw/levels/chapter4/level2/start
execute if score level settings matches 13 run function aw/levels/chapter4/level3/start
execute if score level settings matches 14 run function aw/levels/chapter4/level4/start

## 播放音乐
function aw/lib/events/play_music
