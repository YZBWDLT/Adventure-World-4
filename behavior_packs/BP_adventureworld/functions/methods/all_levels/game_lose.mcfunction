# ===== 所有关卡通用的游戏失败功能 =====

## --- 标题与音效 ---
title @a times 0 100 0
title @a title §c§l关 卡 失 败
title @a subtitle 所有人已死亡！已返回上一个重生点。
scoreboard players set @e[name=soundPlayer] active 13

## --- 更改全体玩家的存活状态 ---
scoreboard players set @a isAlive 2

## --- 记录失败次数 ---
scoreboard players add @e[name=failedTimes] stats 1
scoreboard players add allFailedTimes stats 1
execute @e[name=failedTimes,scores={stats=3}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败3次了！下一次进入关卡时将给予力量II效果。"}]}
execute @e[name=failedTimes,scores={stats=5}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败5次了！下一次进入关卡时将给予力量II、生命提升V和抗性提升I效果。\n如果还是过不去的话，请自行作弊解决吧=_="}]}

## --- 为玩家补充残留的重要装备 ---
function methods/supplier/items

## --- 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪 ---
function methods/timeline/disable
kill @e[family=hookshot]

## --- 清除所有的怪物和怪物生成器 ---
kill @e[family=summoner]
kill @e[family=monster]