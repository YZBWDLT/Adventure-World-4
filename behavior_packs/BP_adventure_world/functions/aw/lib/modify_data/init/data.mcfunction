# ===== 数据重置 =====
# 重置游戏数据，重置记分板、变量和标记实体到默认值下
# 调用此方法时：无需修饰。

# --- 常加载区域重置 ---
tickingarea add 0 0 0 15 0 15 "originArea"

# --- 记分板重置 ---
scoreboard objectives add active dummy "激活状态"
scoreboard objectives add data dummy "数据"
scoreboard objectives add settings dummy "设置"
scoreboard objectives add record dummy "记录"
scoreboard objectives add time dummy "时间"

scoreboard objectives add isOnline dummy "玩家在线数据"
scoreboard objectives add deathState dummy "死亡状态"
scoreboard objectives add deathCount dummy "死亡次数"
scoreboard objectives add deathTime dummy "死亡时长"
scoreboard objectives add killCount dummy "击杀数"

# --- 数据变量重置 ---

## 玩家数据
scoreboard players set @a deathCount 0
scoreboard players add @a deathState 0
scoreboard players set @a deathTime 0
scoreboard players set @a killCount 0
scoreboard players set @a isOnline 1

## 基础时间数据
scoreboard players set tick time 0

## 时间线
scoreboard players set timeline active 0
scoreboard players set timeline time 0
scoreboard players set timeLapse data 0
scoreboard players set keepValue data 0

## 音效控制器
scoreboard players set sound active 0
scoreboard players set sound time 0

## 开发者设置
scoreboard players set developerMode settings 0

## 关卡数据
scoreboard players set chapter data 0
scoreboard players set level data 0
scoreboard players set levelCompleted data 1
scoreboard players set wave data 1
scoreboard players set maxWave data 1

## 游玩时长
scoreboard players set playedSecond time 0
scoreboard players set playedMinute time 0

## 实体数目
scoreboard players set playerAmount data 0
scoreboard players set alivePlayerAmount data 0
scoreboard players set monsterAmount data 0

## 失败次数
scoreboard players set failedCount.thisLevel data 0
scoreboard players set failedCount.allLevels data 0

## 剧情模式
scoreboard players set storyMode settings 0

## 难度
scoreboard players set difficulty settings 1
scoreboard players set extraDifficulty settings 0

## 客户端标记
scoreboard players set client data 0

## 是否允许补充药水和箭
scoreboard players set allowPotionSupply data 0
scoreboard players set allowArrowSupply data 0

## NPC 是否能交互
scoreboard players set allowNpcInteraction data 1

## 是否启用传声石结晶
scoreboard players set allowAcousticStoneCrystal data 0

## 是否有玩家使用过主药水或副药水
scoreboard players set potionUsed data 0

## 是否有玩家开启了创造模式作弊
scoreboard players set hasCheat data 0

## 是否显示 HUD
scoreboard players set allowHud data 1

## 是否移除物品掉落物
scoreboard players set allowRemoveItemEntity data 1
