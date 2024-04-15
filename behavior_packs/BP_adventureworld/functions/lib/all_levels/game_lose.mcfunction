# ===== 关卡失败函数 =====
# 该函数用于关卡失败之时。
# 函数逻辑：在关卡失败时先行执行。

## --- 标题与音效 ---
title @a times 0 100 0
title @a title §c§l关 卡 失 败
title @a subtitle 所有人已死亡！已返回上一个重生点。
scoreboard players set @e[name=soundPlayer] active 13

## --- 更改全体玩家的存活状态 ---
scoreboard players set @a isAlive 2

## --- 记录失败次数 ---
scoreboard players add @e[name=failedTimes] data 1
scoreboard players add @e[name=allFailedTimes] data 1
execute @e[name=failedTimes,scores={data=3}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败3次了！下一次进入关卡时将给予力量II效果。"}]}
execute @e[name=failedTimes,scores={data=5}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败5次了！下一次进入关卡时将给予力量II、生命提升V和抗性提升I效果。\n如果还是过不去的话，请自行作弊解决吧=_="}]}

## --- 为玩家补充物资 ---
execute @a ~~~ function lib/supplier/arrow
execute @a ~~~ function lib/supplier/potion
execute @a ~~~ function lib/supplier/items

## --- 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪 ---
function lib/states/timeline/disable

## --- 清除多余实体 ---
kill @e[family=summoner]
kill @e[family=monster]
kill @e[family=hookshot]

# --- 将关卡完成模式改为立即完成 ---
function lib/states/level_complete_delay/disable
