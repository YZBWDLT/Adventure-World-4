# 冒险小世界：剑之试炼

一张Minecraft 基岩版 1.18.30的自定义PVE地图

## 作者

一只卑微的量筒
狂野巴豆

**极筑工坊**出品

## 简介

还记得《冒险世界：苏醒》所发生的故事吗？在那一段冒险结束之后，村里又发生了一件不寻常的事情，故事的续写也从此开始……

本地图为冒险世界系列作品中的小插曲，为PVE类型，未玩过前作也可以放心体验。同时也欢迎游玩前作《冒险世界：逃离》《冒险世界：苏醒》和《冒险世界：迷失》，点击作者头像打开作品页面即可找到。

本地图制作耗时极长，内容和机制十分完善。拥有精美的建筑；全程无命令方块，使用函数驱动；拥有药水、武器等多种自定义物品；各种怪物都进行了不同程度的修改，更具有趣味性和挑战性；可以单人或多人游玩，动态难度会根据游玩人数变化。

## 更新日志

- 全面采用新版`/execute`语法
- 全面采用中国版脚本和国际版脚本配合函数系统
- 现在死亡榜可以记录一切死亡的数据，而不光是仅在游戏中记录死亡数据了
- 现在物品是每秒检测一次，并供应缺少的物品的，而不再是在特定时机检测并供应了
- 现在钻石头盔和钻石靴子不再需要玩家手持一次，是直接给予的了
- 现在使用御风珠来代替绳枪，以和冒险世界（包括冒险世界：筑梦）系列的其他类似物品保持一致
  - 同时，移除了物品准星
- 现在右侧的信息板不再会在玩家手持物品时，来回在物品信息和关卡信息之间闪了
- 现在药水不再显示当前上限

### 底层更新

#### 附加包

- 合并了`BP_aw_main`、`BP_aw_main_international`和`BP_aw_main_netease`为`BP_adventure_world`
- 合并了`RP_aw_main`、`RP_aw_music_pack`为`RP_adventure_world_main`
- 更名了`RP_aw_netease`为`RP_adventure_world_netease`
- 新增了`RP_adventure_world_international`

#### 物品

- 现在每种物品都使用`1.20.50`的格式版本
- 将`aw:hookshot`改为了`aw:wind_pearl`
- 移除了`aw:enable_crosshair`
- 移除了`aw:main_potion_used`和`aw:vice_potion_used`物品

#### 实体

- 移除了`player.json`，现在和玩家相关的检测都通过脚本进行
- 合并了`aw:npc`和`aw:npc_author`为`aw:npc`，并使用了实体属性
- 现在使用独立的实体`aw:spawner`生成怪物，不再使用`aw:marker`

#### 脚本

- 现在对地图分别添加了国际版和中国版的脚本支持
- 现在脚本用于御风珠的碰撞判定
- 现在物品的使用都依托于脚本进行检测，而不再使用玩家动画控制器
- 现在击杀判定依托于脚本进行检测，而不再使用玩家实体文件
- 现在玩家喝下药水依托于脚本进行检测，而不再使用`using_converts_to`的物品检测

#### 标记实体

- 现在所有的记分板变量都使用假名代替，移除了大量用于存储变量的标记
- 现在使用带以下标签的标记实体：
  - `thisLevel`：作为玩家的重生点
  - `nextLevel`：作为玩家进入下一关的检测点
  - `prevLevel`：作为玩家在上一关的重生点
  - 游戏开始后，`thisLevel` -> `prevLevel`，`nextLevel` -> `thisLevel`
  - 游戏失败后，`prevLevel` -> `thisLevel`，`thisLevel` -> `nextLevel`
  - 游戏胜利后，删除`prevLevel`，新建`nextLevel`

#### 记分板变量

- **新增**
  - `deathState`记分板，用于记录玩家的死亡状态
    - `deathState.@s`=`0`：未处于死亡状态
    - `deathState.@s`=`1`：刚刚死亡，但还未记录死亡榜
    - `deathState.@s`=`2`：长期死亡，还未复活
  - `deathTime`记分板，用于记录玩家处于死亡状态的时长，单位：游戏刻
  - `data.allowPotionSupply`，用于标记允许补充药水
    - 为`0`时，药水控制器不会补充药水
    - 为`1`时，药水控制器补充药水
  - `data.allowArrowSupply`，用于标记允许补充箭
    - 为`0`时，箭控制器不会补充箭
    - 为`1`时，箭控制器补充箭，并且清除当前世界中的所有实体箭
- **更名**：
  - 记分板`deathTimes` -> 记分板`deathCount`
  - 记分板`killAmount` -> 记分板`killCount`
  - `data.maxPlayersAmount` -> `data.playerAmount`
  - `data.alivePlayersAmount` -> `data.alivePlayerAmount`
  - `time.@s` -> `deathTime.@s`
  - `data.storyMode` -> `settings.storyMode`
  - 标签`potionUsed` -> `data.potionUsed`
  - 标签`cheated` -> `data.hasCheat`
- **拆分**：
  - 记分板变量`isAlive.@s` -> 标签变量`spectator`，新值与旧值的对应关系为：
    - `isAlive.@s`=`0` -> `data.levelCompleted`=`0`&&`spectator`
    - `isAlive.@s`=`1` -> `data.levelCompleted`=`0`&&!`spectator`
    - `isAlive.@s`=`2` -> `data.levelCompleted`=`1`
    - `isAlive.@s`=`3` -> 被抛弃，不再使用原来的判定方法
  - `data.gameId`，因其在诸多方面（包括数值分解、屏蔽词）等方面都造成了诸多不便
    - 现在使用`data.chapter`、`data.level`和`data.levelCompleted`代替
  - `xxx.timeline`、`xxx.dialogue` -> `xxx.timeline`、`data.npcIsInteractable`
- **移除**：
  - `hookshot`记分板，现在使用脚本代替。
  - `data.hookshotAmount`，现在使用脚本代替。
  - `isAlive`标签，现在用`deathState`代替。
  - `data.realDeadPlayersAmount`，因为现在可以直接使用`unless entity`检测相关玩家

#### 关卡 ID

- 现在村庄的 ID 有下面的新的对应关系。

  | 游戏ID`data.temp.gameId` | 以前的游戏ID`data.temp.gameId` | 意义 |
  | :---: | :---: | --- |
  | `010`/`011` | `3` | |
  | `020`/`021` | `4` | |
  | `030`/`031` | `5` | |
  | `040`/`041` | `6` | |
  | `050`/`051` | `7` | |
  | `060`/`061` | `8` | |
  | `070`/`071` | `9` | |
  | `080`/`081` | `99` | 开幕 |
  | `1010`/`1011` | `1001` | |
  | `1020`/`1021` | `1002` | |
  | `1030`/`1031` | `1003` | |
  | `1040`/`1041` | `1004` | |

#### 函数文件

- 现在采用函数系统：主包 v3 模板。
- **新增**（`.mcfunction`）：
  - `items/{...}`，控制喝下药水后的行为，其中`{...}`为药水 ID
- **更名或移动**（`.mcfunction`）：
  - `system/respawn_controller` -> `system/controller/player_die`
  - `system/gamemode_switcher` -> `lib/modify_data/developer_gamemode`
  - `system/time_controller` -> `system/timer`
  - `lib/death_message_announcer` -> `lib/modify_data/death_message`
  - `lib/music_player` -> `lib/modify_data/play_music`
  - `lib/init/gamerule` -> `lib/modify_data/init/gamerule`
  - `developer/developer_mode` -> `settings/developer_mode`
  - `lib/scoreboard/{1}player_{2}_mode` -> `lib/modify_data/levels/info_{1}_{2}`
  - `entities/player/using_{1}` -> `items/{1}`，现在使用脚本检测并自动执行对应函数
- **合并**（`.mcfunction`）：
  - `system/item_limit/items`、`lib/supplier/items`、`system/equipment_tester` -> `system/controller/items`，现在通过物品控制器，每秒进行一次物品上限检测、补充和附魔
  - `system/item_limit/potions`、`system/item_limit/potions2`、`lib/supplier/potion` -> `system/controller/potions`，现在通过药水控制器，每秒进行一次药水上限检测和补充，并且时刻检查玩家喝下的药水
  - `system/item_limit/arrows`、`lib/supplier/arrow` -> `system/controller/arrows`，现在通过箭控制器，每秒进行一次箭上限检测和补充
- **拆分**（`.mcfunction`）：
  - `system/antileave`、`lib/init/player_data` -> `system/antileave`、`lib/modify_data/rejoined_player`
- **移除**（`.mcfunction`）：
  - `system/gameid_seperator`，因为现在实际上已不再使用`data.gameId`来控制
  - `entities/hookshot/hit_planks_test`，现在使用脚本检测
  - `entities/hookshot/hookshot`，现在使用脚本检测
