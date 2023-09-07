# 所有关卡通用的游戏失败功能

## 标题与音效
title @a times 0 100 0
title @a title §c§l关 卡 失 败
title @a subtitle 所有人已死亡！已返回上一个重生点。
scoreboard players set @e[name=soundPlayer] active 13

## 清理所有残余的怪物
kill @e[family=monster]

## 给予所有人生存标签
tag @a add alive

## 记录失败次数
scoreboard players add @e[name=failedTimes] stats 1
scoreboard players add allFailedTimes stats 1
execute @e[name=failedTimes,scores={stats=3}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败3次了！下一次进入关卡时将给予力量II效果。"}]}
execute @e[name=failedTimes,scores={stats=5}] ~~~ tellraw @a {"rawtext":[{"text":"§7你（们）已经失败5次了！下一次进入关卡时将给予力量II、生命提升V和抗性提升I效果。\n如果还是过不去的话，请自行作弊解决吧=_="}]}