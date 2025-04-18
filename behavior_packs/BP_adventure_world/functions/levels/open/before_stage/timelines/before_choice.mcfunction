# ===== 在玩家选择模式之前 =====

# --- 显示信标粒子 ---
particle aw:blue_beacon 43 27 86
particle aw:gold_beacon 45 27 86

# --- 停止音乐 ---
execute if score tick time matches 0 run music stop

# --- 添加药效 ---
execute if score tick time matches 1 run effect @a water_breathing 30 0 true

# --- 检查玩家进入信标粒子以开始游戏 ---

## 启动剧情模式
execute if entity @a[x=43,y=27,z=86,dx=0,dy=2,dz=0] run function levels/open/before_stage/events/start_story_mode

## 启动战斗模式
execute if entity @a[x=45,y=27,z=86,dx=0,dy=2,dz=0] run function levels/open/before_stage/events/start_combat_mode
