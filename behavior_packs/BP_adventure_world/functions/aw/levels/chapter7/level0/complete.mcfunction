# ===== 完成关卡 =====
# 7-0 | 剑之神殿 -> 封印神殿

# --- 设置重生点 ---
# 设置到 7-1，以防卡关
spawnpoint @a -119 -16 103

# --- 调用通用函数 ---
function aw/lib/events/levels/complete_chapter

# --- 关卡特殊功能 ---
# 因为这里关卡结束的同时是另一个章节的“开始”，所以这里会涉及部分章节开始通用函数的命令

## 传送玩家到重生点
tp @a -119 -16 103
## 启用时间线流逝
function aw/lib/modify_data/timeline/enable_time_lapse
## 封闭各关卡门口
### 开启以前的门并全部移除
execute as @e[type=aw:door] at @s run fill ~-3~~-3~3~4~3 structure_void replace barrier
event entity @e[type=aw:door] aw:remove_immediately
### 召唤门
#### 7-1
summon aw:door -151 -18 101 90 0 aw:set_final_door
#### 7-2
summon aw:door -159 -18 110 90 0 aw:set_final_door
summon aw:door -184 -18 97 90 0 aw:set_final_door
#### 7-3
summon aw:door -192 -18 97 90 0 aw:set_final_door
summon aw:door -217 -18 99 90 0 aw:set_final_door
#### 7-4
summon aw:door -223 -18 99 90 0 aw:set_final_door
### 关闭门（包括 7-4 出口）
event entity @e[type=aw:door] aw:close_door
fill -235 -30 97 -233 -30 99 red_stained_glass
## 生成章节名
kill @e[has_property={aw:marker_type="name"}]
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§c封印神殿"
## 播放音乐
function aw/lib/events/play_music
## 添加迷雾
fog @a remove gameFog
fog @a push aw:final_temple gameFog
