# ===== 关卡结束通用函数 =====
# 试炼中关卡通用的内容。用于在关卡结束时调用。
# 调用此方法时：需修饰执行位置为该关重生点位置（execute positioned (本关重生点)）。

# --- 关卡参数 ---
## 设置关卡为已完成
    scoreboard players set levelCompleted data 1
## 设置为可恢复药水
    scoreboard players set allowPotionSupply data 1
## 设置为可恢复箭
    scoreboard players set allowArrowSupply data 1
## 启用时间线 | 将原来的时间值归零
    function aw/lib/modify_data/states/timeline/dont_keep_value
    function aw/lib/modify_data/states/timeline/enable
## 失败次数归零
    scoreboard players set failedCount.thisLevel data 0
## 重置关卡完成倒计时
    scoreboard players set levelCompleteCountdown time 0

# --- 玩家 ---
## 标题
    function aw/lib/modify_data/title
    titleraw @a subtitle {"rawtext":[{"translate":"§a关卡已完成！"}]}
## 音效
    function aw/lib/modify_data/states/sound/random_levelup_2
## 设置重生点
    spawnpoint @a ~~~
## 复活已死亡玩家到重生点
    execute as @a[tag=spectator] run function aw/lib/events/respawn_player
## 回血
    effect @a instant_health 1 20 true

# --- 清除多余实体 ---
    kill @e[family=monster]
    kill @e[type=aw:wind_pearl]
    event entity @e[type=aw:spawner] aw:remove_immediately
