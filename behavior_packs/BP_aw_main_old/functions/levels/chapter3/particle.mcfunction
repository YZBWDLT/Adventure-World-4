# --- 第三章粒子 ---
## 在第3章时常显示气泡，第4-6章时只在检测到有玩家处于第3章的区域时执行

execute @e[name=gameId,scores={data=300..399}] ~~~ particle aw:bubble_bottom -176 -24 24
execute @e[name=gameId,scores={data=300..399}] ~~~ particle aw:bubble_top -173 5 23

execute @e[name=gameId,scores={data=400..699}] ~~~ execute @a[scores={position=30..39},c=1] ~~~ particle aw:bubble_bottom -176 -24 24
execute @e[name=gameId,scores={data=400..699}] ~~~ execute @a[scores={position=30..39},c=1] ~~~ particle aw:bubble_top -173 5 23
