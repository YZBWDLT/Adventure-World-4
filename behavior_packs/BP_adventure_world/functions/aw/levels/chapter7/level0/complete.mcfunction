# ===== 完成关卡 =====
# 7-0 | 剑之神殿 -> 封印神殿

# 设置重生点 | 设置到 7-1，防卡关
spawnpoint @a -119 -16 103

# 调用通用函数
function aw/lib/modify_data/levels/complete_chapter

# 关卡特殊功能

## 传送玩家到重生点
tp @a -119 -16 103
## 解除玩家行动限制
function aw/lib/modify_data/stop_dialogue
## 启用时间线流逝
function aw/lib/modify_data/states/timeline/enable_time_lapse
## 封闭各关卡出口
### 7-1
fill -150 -18 102 -150 -16 100 nether_brick
### 7-2
fill -184 -18 98 -184 -16 96 nether_brick
### 7-3
fill -217 -18 98 -217 -16 100 nether_brick
### 7-4
fill -235 -30 97 -233 -30 99 red_stained_glass
## 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§c封印神殿"
