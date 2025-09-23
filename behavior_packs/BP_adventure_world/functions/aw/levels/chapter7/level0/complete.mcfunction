# ===== 完成关卡 =====
# 7-0 | 剑之神殿 -> 封印神殿

# --- 设置重生点 ---
# 设置到 7-1，以防卡关
spawnpoint @a -119 -16 103

# --- 调用通用函数 ---
function aw/lib/events/levels/complete_chapter

# --- 关卡特殊功能 ---
# 因为这里关卡结束的同时是另一个章节的“开始”，所以这里会涉及部分章节开始通用函数的命令

## 执行章节初始化函数
function aw/levels/chapter7/init
## 传送玩家到重生点
tp @a -119 -16 103
## 启用时间线流逝
function aw/lib/modify_data/timeline/enable_time_lapse
## 关闭门（包括 7-4 出口）
event entity @e[type=aw:door] aw:close_door
## 播放音乐
function aw/lib/events/play_music
