# ===== 第 1 波时间线 =====

# --- 剧情（提示） ---
    execute if score timeline time matches 50 run tellraw @a {"rawtext":[{"translate":"§a注意，现在你会见到一些带盾怪物"}]}
    execute if score timeline time matches 150 run tellraw @a {"rawtext":[{"translate":"§a在它们拥有§b【蓝盾】§a的情况下，它们不会受到伤害"}]}
    ## [250] 其他：将怪物的盾设置为红盾
    execute if score timeline time matches 250 run tellraw @a {"rawtext":[{"translate":"§a现在它们拥有§c【红盾】§a，在它们拥有§c【红盾】§a的情况下，它们只能受到来自旷野之剑的伤害§b并被破除盾§a的效果"}]}
    execute if score timeline time matches 350 run tellraw @a {"rawtext":[{"translate":"§a当这些怪物被破除盾后，它们可以受到任何类型的伤害，但§b2至4秒后，它们的盾将会恢复为【蓝盾】"}]}
    execute if score timeline time matches 450 run tellraw @a {"rawtext":[{"translate":"§a在它们失去盾的时候，尽可能地对它们造成尽量高的伤害"}]}
    execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"translate":"§c将这些带盾僵尸清理掉，迎接最终的试炼"}]}
    ## [701] 其他：剧情结束

# --- 其他 ---

    ## [250] 将怪物的盾设置为红盾
        execute if score timeline time matches 250 run function aw/levels/chapter7/level5/events/set_weak_shield

    ## [701] 剧情结束
        execute if score timeline time matches 701 run function aw/lib/modify_data/timeline/disable_time_lapse
