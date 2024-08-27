# ===== 开始游戏前时间线 =====

# --- 显示粒子 ---
particle aw:blue_beacon 43 27 86
particle aw:gold_beacon 45 27 86

# --- 检测玩家，当玩家进入后开始 ---

## 剧情模式
execute @a[x=43,y=27,z=86,dx=0,dy=2,dz=0,c=1] ~~~ scoreboard players set @e[name=gameId] data 2
execute @a[x=43,y=27,z=86,dx=0,dy=2,dz=0,c=1] ~~~ function levels/open/story_mode/start

## 战斗模式
execute @a[x=45,y=27,z=86,dx=0,dy=2,dz=0,c=1] ~~~ scoreboard players set @e[name=gameId] data 99
execute @a[x=45,y=27,z=86,dx=0,dy=2,dz=0,c=1] ~~~ function levels/open/combat_mode/start

# --- 给予玩家药效 ---
execute @e[name=tick,scores={time=15}] ~~~ effect @a water_breathing 30 0 true

# --- 停止音乐 ---
execute @e[name=tick,scores={time=17}] ~~~ music stop
