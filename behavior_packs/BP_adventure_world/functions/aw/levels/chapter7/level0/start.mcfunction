# ===== 开始关卡 =====
# 7-0 | 剑之神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 7
scoreboard players set level data 0

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/start_chapter
## 移除标题
title @a clear
## 移除音效
function aw/lib/modify_data/states/sound/reset

# --- 关卡特殊功能 ---
## 生成旷野之剑的实体
event entity @e[type=aw:wild_sword] aw:remove_immediately
summon aw:wild_sword -87 -38 105 0 0 aw:set_stuck
## 初始化天花板
fill -82 1 111 -91 -1 99 air
fill -82 0 111 -91 0 99 quartz_block ["chisel_type"="smooth"]
## 相机黑屏
camera @a fade time 2 5 2
## 对任何模式（包括纯战斗模式）的玩家启用对话和剧情
function aw/lib/modify_data/start_dialogue
