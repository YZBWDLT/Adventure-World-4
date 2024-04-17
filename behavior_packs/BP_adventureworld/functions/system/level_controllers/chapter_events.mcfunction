# ===== 章节事件控制器 =====
# 本文件控制了各个章节将触发的固定事件。

# --- 全局饱和 ---
execute @e[name=tick,scores={time=0}] ~~~ effect @a saturation 1 10 true

# --- 全局清除怪物和生成器 ---
## 每秒执行一次。仅当处于未游戏状态下执行。
## 开发者模式启用时，不全局清除怪物。
execute @e[name=tick,scores={time=1}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ kill @e[family=summoner]
execute @e[name=tick,scores={time=1}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ execute @e[name=developerMode,scores={data=0}] ~~~ kill @e[family=monster]

# --- 第二章陷阱更新 ---
## 每秒执行一次。当玩家处于第二章过道区域时执行。
execute @e[name=tick,scores={time=18}] ~~~ execute @a ~~~ function lib/get_data/entity_location
execute @e[name=tick,scores={time=18}] ~~~ execute @a[scores={position=20}] ~~~ function levels/chapter2/traps

# --- 第三章清除水 ---
execute @e[name=tick,scores={time=13}] ~~~ function levels/chapter3/water_clear

# --- 第三章气泡 ---
## 每5秒执行一次
execute @e[name=gameId,scores={data=300..699}] ~~~ execute @e[name=playedSecond,scores={time=0..59,time=!1..4,time=!6..9,time=!11..14,time=!16..19,time=!21..24,time=!26..29,time=!31..34,time=!36..39,time=!41..44,time=!46..49,time=!51..54,time=!56..59}] ~~~ function levels/chapter3/particle

# --- 地图重置 ---
## 当检测到玩家在重置区后，重置地图
execute @a[x=-90,y=0,z=-16,dx=4,dy=4,dz=4,c=1] ~~~ function levels/open/start_from_end
