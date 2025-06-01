# 冒险小世界：剑之试炼

一张 Minecraft 基岩版 1.21.0 的自定义 PVE 地图

## 作者

一只卑微的量筒
狂野巴豆

**极筑工坊**出品

## 简介

还记得《冒险世界：苏醒》所发生的故事吗？在那一段冒险结束之后，村里又发生了一件不寻常的事情，故事的续写也从此开始……

本地图为冒险世界系列作品中的小插曲，为PVE类型，未玩过前作也可以放心体验。同时也欢迎游玩前作《冒险世界：逃离》《冒险世界：苏醒》和《冒险世界：迷失》，点击作者头像打开作品页面即可找到。

本地图制作耗时极长，内容和机制十分完善。拥有精美的建筑；全程无命令方块，使用函数驱动；拥有药水、武器等多种自定义物品；各种怪物都进行了不同程度的修改，更具有趣味性和挑战性；可以单人或多人游玩，动态难度会根据游玩人数变化。

## 更新日志

### 游戏内容

#### 玩家物品

- 现在使用御风珠来代替绳枪，以和冒险世界（包括冒险世界：筑梦）系列的其他类似物品保持一致
  - 同时，移除了物品准星
- 现在物品是每秒检测一次，并供应缺少的物品的，而不再是在特定时机检测并供应了
- 现在钻石头盔和钻石靴子不再需要玩家手持一次，是直接给予的了

#### 信息板

- 现在不再尝试实时监测玩家位置，因其实用用途不大。因此，右侧信息板也不再实时返回玩家所处关卡位置
- 现在不再在怪物生成后检查最大怪物数
- 现在死亡榜可以记录一切死亡的数据，而不光是仅在游戏中记录死亡数据了
- 现在药水不再显示当前上限
- 现在不再会在玩家手持物品时，来回在物品信息和关卡信息之间闪了

#### 观战

- 移除了观战区，现在使用旁观模式进行旁观

#### 剧情

- 统一了中国版和国际版的剧情内容，不再单独做出适配
- 移除了一个严重违规成员的制作人表
- 更名：烈焰之魂 -> 烈焰王

### 底层更新

- 全面采用新版`/execute`语法
- 全面采用中国版脚本和国际版脚本配合函数系统

#### 附加包

- 合并了`BP_aw_main`、`BP_aw_main_international`和`BP_aw_main_netease`为`BP_adventure_world`
- 合并了`RP_aw_main`、`RP_aw_music_pack`为`RP_adventure_world_main`
- 更名了`RP_aw_netease`为`RP_adventure_world_netease`
- 新增了`RP_adventure_world_international`
- 移除了`BP_aw_main_old`
- 现在`manifest.json`的最小引擎版本均为`1.21.0`

#### 物品

- 现在每种物品都使用`1.20.50`的格式版本
- 将`aw:hookshot`改为了`aw:wind_pearl`
- 移除了`aw:enable_crosshair`
- 移除了`aw:main_potion_used`和`aw:vice_potion_used`物品

#### 方块

- 现在每种方块都使用`1.20.50`的格式版本

#### 实体

- 移除了`player.json`，现在和玩家相关的检测都通过脚本进行
- 合并了`aw:npc`和`aw:npc_author`为`aw:npc`，并使用了实体属性
- 因生成器逻辑较为复杂，现在使用独立的实体`aw:spawner`生成怪物，不再使用`aw:marker`

#### 脚本

- 现在对地图分别添加了国际版和中国版的脚本支持
- 现在脚本用于御风珠的碰撞判定
- 现在物品的使用都依托于脚本进行检测，而不再使用玩家动画控制器
- 现在击杀判定依托于脚本进行检测，而不再使用玩家实体文件
- 现在玩家喝下药水依托于脚本进行检测，而不再使用`using_converts_to`的物品检测

#### 标记实体

- 现在所有的记分板变量都使用假名代替，移除了大量用于存储变量的标记
- 现在使用带以下`aw:level`实体属性的标记实体：
  - `this`：作为玩家的重生点
  - `next`：作为玩家进入下一关的检测点
  - `prev`：作为玩家在上一关的重生点
  - 游戏开始后，`this` -> `prev`，`next` -> `this`
  - 游戏失败后，`prev` -> `this`，`this` -> `next`
  - 游戏胜利后，删除`prev`，新建`next`

#### 记分板变量

- **新增**
  - `deathState: 0 | 1 | 2`记分板，用于记录玩家的死亡状态
    - `deathState.@s`=`0`：未处于死亡状态
    - `deathState.@s`=`1`：刚刚死亡，但还未记录死亡榜
    - `deathState.@s`=`2`：长期死亡，还未复活
  - `deathTime`记分板，用于记录玩家处于死亡状态的时长，单位：游戏刻
  - `data.allowPotionSupply: 0 | 1`，用于标记允许补充药水
  - `data.allowArrowSupply: 0 | 1`，用于标记允许补充箭
    - 为`1`时，箭控制器不但补充箭，并且清除当前世界中的所有实体箭
  - `data.allowAcousticStoneCrystal: 0 | 1`，用于标记是否允许补充传声石结晶
  - `data.allowHud: 0 | 1`，用于标记是否启用 HUD
  - `data.allowRemoveItemEntity: 0 | 1`，用于标记是否移除物品掉落物
  - 标签`outOfBorder`，用于判断旁观模式的玩家是否越界
- **更名**：
  - 记分板`deathTimes` -> 记分板`deathCount`
  - 记分板`killAmount` -> 记分板`killCount`
  - `data.maxPlayersAmount` -> `data.playerAmount`
  - `data.alivePlayersAmount` -> `data.alivePlayerAmount`
  - `data.failedTimes` -> `data.failedCount.thisLevel`
  - `data.allFailedTimes` -> `data.failedCount.allLevels`
  - `time.@s` -> `deathTime.@s`
  - `data.storyMode` -> `settings.storyMode`
  - `data.difficulty` -> `settings.difficulty`
  - `data.difficultyAdder` -> `settings.extraDifficulty`
  - `data.developerMode` -> `settings.developerMode`
  - 标签`potionUsed` -> `data.potionUsed`
  - 标签`cheated` -> `data.hasCheat`
  - `record.achievement.singlePlayer_completeMap` -> `record.achievement.singlePlayer.finishMap`
  - `record.achievement.multiPlayer_completeMap` -> `record.achievement.multiPlayer.finishMap`
- **拆分**：
  - 记分板变量`isAlive.@s` -> 标签变量`spectator`，新值与旧值的对应关系为：
    - `isAlive.@s`=`0` -> `data.levelCompleted`=`0`&&`spectator`
    - `isAlive.@s`=`1` -> `data.levelCompleted`=`0`&&!`spectator`
    - `isAlive.@s`=`2` -> `data.levelCompleted`=`1`
    - `isAlive.@s`=`3` -> 被抛弃，不再使用原来的判定方法
  - `data.gameId`，因其在诸多方面（包括数值分解、屏蔽词）等方面都造成了诸多不便
    - 现在使用`data.chapter`、`data.level`和`data.levelCompleted`代替
  - `xxx.timeline`、`xxx.dialogue` -> `xxx.timeline`、`data.allowNpcInteraction`
- **移除**：
  - `hookshot`记分板，现在使用脚本代替。
  - `data.hookshotAmount`，现在使用脚本代替。
  - `isAlive`标签，现在用`deathState`代替。
  - `data.realDeadPlayersAmount`，因为现在可以直接使用`unless entity`检测相关玩家
  - `temp`、`temp2`、`temp3`记分板，现在使用`data`下的各`temp.`变量代替
  - `position.@s`，现在不再实时监测玩家所处位置，因其过于复杂且消耗性能
  - `data.maxMonsterAmount`，现在不再在怪物生成后检查最大怪物数

#### 关卡 ID

- 现在村庄的 ID 有下面的新的对应关系。
  - 现在`data.level`是从`1`开始算起的，阶段是基于`data.level`判断的
  - 合并了从见到张宇到获取传声石结晶的剧情为一个阶段

  | 游戏ID`data.temp.gameId` | 以前的游戏ID`data.temp.gameId` | 意义 |
  | :---: | :---: | --- |
  | `010`/`011` | `3` | |
  | `020`/`021` | `4` | |
  | `030`/`031` | `5` | |
  | `040`/`041` | `6~8` | |
  | `050`/`051` | `9`/`99` | 开幕 |
  | `1010`/`1011` | `1001` | |
  | `1020`/`1021` | `1002` | |
  | `1030`/`1031` | `1003` | |
  | `1040`/`1041` | `1004` | |

#### 函数文件

- 现在采用函数系统：主包 v3 模板。
- 根据新版的函数系统重构了文件架构，因此有大量的文件被重命名、移除、移动或新增。这里不再对函数文件的所有具体更改详细阐述，只对其中的主要更改进行必要解释。
- 入口文件改为了`system/main.mcfunction`，并采用了`1.21.0`的格式版本。
- 在库方法代码内采用新版注释格式，更加简短，且能够避免重复描述行为，以及对前文应使用的`/execute`命令做出进一步指导。
  - 以前：

    ```mcfunction
    # ===== (功能) =====
    # (功能描述)

    # 调用此方法时：
    # · 执行者(应设置的执行者)
    # · 执行位置(应设置的执行位置)
    # 输出结果：
    # · (声明更改的变量的值，或输出的变量)

    ```

  - 现在：

    ```mcfunction
    # ===== (功能) =====
    # (功能描述)
    # 调用此方法时：(无需修饰)/(需修饰……为……（execute ……）)

    ```
