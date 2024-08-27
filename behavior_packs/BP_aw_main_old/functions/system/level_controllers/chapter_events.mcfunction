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

## 为防止陷阱无限触发，在关卡完成后应当检测箭的数目，过多则予以清除 | 在2~6章开始检测
execute @e[name=tick,scores={time=19}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ execute @e[name=chapter,scores={data=2..6}] ~~~ function lib/get_data/arrow_amount
execute @e[name=tick,scores={time=19}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ execute @e[name=chapter,scores={data=2..6}] ~~~ execute @e[name=arrowAmount,scores={data=50..}] ~~~ tellraw @a {"rawtext":[{"translate":"§c检测到过多数目的实体箭，现已清除"}]}
execute @e[name=tick,scores={time=19}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ execute @e[name=chapter,scores={data=2..6}] ~~~ execute @e[name=arrowAmount,scores={data=50..}] ~~~ execute @a ~~~ function lib/supplier/arrow
execute @e[name=tick,scores={time=19}] ~~~ execute @e[name=levelCompleted,scores={data=!0}] ~~~ execute @e[name=chapter,scores={data=2..6}] ~~~ execute @e[name=arrowAmount,scores={data=50..}] ~~~ kill @e[type=arrow]

# --- 第三章清除水 ---
execute @e[name=tick,scores={time=13}] ~~~ function levels/chapter3/water_clear

# --- 第三章气泡 ---
## 每5秒执行一次
execute @e[name=gameId,scores={data=300..699}] ~~~ execute @e[name=playedSecond,scores={time=0..59,time=!1..4,time=!6..9,time=!11..14,time=!16..19,time=!21..24,time=!26..29,time=!31..34,time=!36..39,time=!41..44,time=!46..49,time=!51..54,time=!56..59}] ~~~ function levels/chapter3/particle

# --- 地图重置 ---
## 当检测到玩家在重置区后，重置地图
execute @a[x=-90,y=0,z=-16,dx=4,dy=4,dz=4,c=1] ~~~ function levels/open/start_from_end

# --- 强制关闭随机刻，防止场景被破坏 ---
gamerule randomtickspeed 0

# --- 强制补全绳枪 ---
## 仅在1-2通关后，7-5通关前给予，仅限国际版
## ojng你物品组件改的好啊！throwable现在也会消耗自身，我无语死了都。这没办法了，必须得用SAPI，紧急更新，先将就这么搞吧。
## 网易那边有E尘大大的绳枪ModAPI，比较稳定，就不魔改了
execute @e[name=gameId,scores={data=121..751}] ~~~ execute @e[name=isNetease,scores={data=0}] ~~~ give @a[hasitem={item=aw:hookshot,quantity=0..1}] aw:hookshot 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
