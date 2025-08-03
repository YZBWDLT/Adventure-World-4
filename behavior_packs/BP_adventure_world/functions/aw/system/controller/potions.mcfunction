# ===== 药水控制器 =====
# 控制玩家获取的药效。
# 防止玩家因为在关键进度缺少某些药水。
# 控制药水上限，防止玩家拥有过多药水。

# --- 获取游戏 ID ---
    function aw/lib/get_data/game_id

# --- 药水上限控制 ---
    ## 治疗药水 | 1-1，1-2，1-3，3-1，3-2，3-3分别给予1瓶。在某关结束后到下一次该药水上限增加的关卡结束前，上限为L
        ### 计算治疗药水的上限数量（data.temp.potionHealthLimit）
            scoreboard players set temp.potionHealthLimit data 0
            execute if score temp.gameId data matches 111..999 run scoreboard players add temp.potionHealthLimit data 1
            execute if score temp.gameId data matches 121..999 run scoreboard players add temp.potionHealthLimit data 1
            execute if score temp.gameId data matches 131..999 run scoreboard players add temp.potionHealthLimit data 1
            execute if score temp.gameId data matches 311..999 run scoreboard players add temp.potionHealthLimit data 1
            execute if score temp.gameId data matches 321..999 run scoreboard players add temp.potionHealthLimit data 1
            execute if score temp.gameId data matches 331..999 run scoreboard players add temp.potionHealthLimit data 1
        ### 如果玩家的药水数量超出了限制数量，则清除之
            execute if score temp.potionHealthLimit data matches 1 as @a[hasitem={item=aw:potion_health,quantity=2..}] run clear @s aw:potion_health -1 1
            execute if score temp.potionHealthLimit data matches 2 as @a[hasitem={item=aw:potion_health,quantity=3..}] run clear @s aw:potion_health -1 1
            execute if score temp.potionHealthLimit data matches 3 as @a[hasitem={item=aw:potion_health,quantity=4..}] run clear @s aw:potion_health -1 1
            execute if score temp.potionHealthLimit data matches 4 as @a[hasitem={item=aw:potion_health,quantity=5..}] run clear @s aw:potion_health -1 1
            execute if score temp.potionHealthLimit data matches 5 as @a[hasitem={item=aw:potion_health,quantity=6..}] run clear @s aw:potion_health -1 1
            execute if score temp.potionHealthLimit data matches 6 as @a[hasitem={item=aw:potion_health,quantity=7..}] run clear @s aw:potion_health -1 1

    ## 其他药水 | 上限为 1
        clear @a[hasitem={item=aw:potion_growth,quantity=2..}] aw:potion_growth -1 1
        clear @a[hasitem={item=aw:potion_thrill,quantity=2..}] aw:potion_thrill -1 1
        clear @a[hasitem={item=aw:potion_turtle,quantity=2..}] aw:potion_turtle -1 1
        clear @a[hasitem={item=aw:potion_rebirth,quantity=2..}] aw:potion_rebirth -1 1
        clear @a[hasitem={item=aw:potion_purification,quantity=2..}] aw:potion_purification -1 1
        clear @a[hasitem={item=aw:potion_hibernation,quantity=2..}] aw:potion_hibernation -1 1

# --- 药水补充 ---
# 仅当 data.allowPotionSupply == 1 时，或玩家拥有 supplyAllPotions 标签时补充药水。
    ## 为 supplyAllPotions 的玩家补充药水
        execute as @a[tag=supplyAllPotions] run function aw/lib/events/supply_potion
    ## 当 data.allowPotionSupply == 1 时，为所有玩家补充药水
        execute as @a if score allowPotionSupply data matches 1 run function aw/lib/events/supply_potion

# --- 程序结束的变量设置 ---
    ## 销毁临时变量
        scoreboard players reset temp.gameId data
        scoreboard players reset temp.potionHealthLimit data
    ## 重新设置为禁止补充药水
        scoreboard players set allowPotionSupply data 0
