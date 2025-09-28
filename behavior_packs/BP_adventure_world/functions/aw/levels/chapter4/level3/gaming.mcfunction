# ===== 关卡游戏时时间线 =====
# 4-3

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter4/level3/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function aw/levels/chapter4/level3/waves/wave_3
## 第 3 波 -> 第 4 波
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 run function aw/levels/chapter4/level3/waves/wave_4
## 第 4 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 4 if score monsterAmount data matches 0 run function aw/levels/chapter4/level3/complete

# --- 阻止玩家出界 ---
# 详细原理可以见我们给出的地图文档，文档链接见主函数（aw/system/main）

## 阻止旁观玩家出界
execute as @a[scores={deathState=0,spectator=!0}] at @s anchored eyes if block ~~80~ barrier positioned -156 -11 14 run function aw/lib/events/player_out_of_border
## 当玩家在上一关重生点时，回到本关
execute as @a positioned -156 8 -1 if entity @s[r=2] run tp @s -156 -11 14
## 阻止玩家关门时跑出房间
execute as @a at @s if block ~~80~ structure_void positioned -156 -11 14 run function aw/lib/events/player_out_of_border

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter4/level3/fail

# --- 检查玩家穿着靴子 ---
execute if entity @a[hasitem={item=leather_boots,location=slot.armor.feet},scores={spectator=!2}] run scoreboard players set temp.playerEquippedLeatherBoots data 1
