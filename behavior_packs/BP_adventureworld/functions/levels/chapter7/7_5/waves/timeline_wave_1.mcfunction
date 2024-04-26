# ===== 第一波时间线 =====

# --- 当游戏开始后60刻，显示标题 ---
execute @e[name=timeline,scores={time=60}] ~~~ function lib/title
execute @e[name=timeline,scores={time=60}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c§l最 终 关 §r§f| 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

# --- 当游戏开始后100刻，此时僵尸已召唤，显示提示 ---
execute @e[name=timeline,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"translate":"§a注意，现在你会见到一些带盾怪物"}]}
execute @e[name=timeline,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"translate":"§a在它们拥有§b【蓝盾】§a的情况下，它们不会受到伤害"}]}
execute @e[name=timeline,scores={time=300}] ~~~ event entity @e[family=zombie] have_weak_shield
execute @e[name=timeline,scores={time=300}] ~~~ execute @a ~~~ playsound beacon.deactivate @s ~~~ 1
execute @e[name=timeline,scores={time=300}] ~~~ tellraw @a {"rawtext":[{"translate":"§a现在它们拥有§c【红盾】§a，在它们拥有§c【红盾】§a的情况下，它们只能受到来自旷野之剑的伤害§b并被破除盾§a的效果"}]}
execute @e[name=timeline,scores={time=400}] ~~~ tellraw @a {"rawtext":[{"translate":"§a当这些怪物被破除盾后，它们可以受到任何类型的伤害，但§b2秒后，它们的盾将会恢复为【蓝盾】"}]}
execute @e[name=timeline,scores={time=500}] ~~~ tellraw @a {"rawtext":[{"translate":"§a在它们失去盾的时候，尽可能地对它们造成尽量高的伤害"}]}
execute @e[name=timeline,scores={time=600}] ~~~ function lib/states/level_complete_delay/disable
execute @e[name=timeline,scores={time=650}] ~~~ tellraw @a {"rawtext":[{"translate":"§c将这些带盾僵尸清理掉，迎接最终的试炼"}]}
execute @e[name=timeline,scores={time=651}] ~~~ function lib/states/timeline/enable_without_flowing
