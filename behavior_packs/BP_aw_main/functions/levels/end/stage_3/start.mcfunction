# ===== 通用内容 =====

# --- 更改关卡ID ---
scoreboard players set @e[name=gameId] data 1003

# --- 重置重生点 ---
tp @e[family=respawner] -27 6 -48

# --- 启用时间线 ---
function lib/states/timeline/enable_without_flowing

# --- 调整或获取数据 ---
## 重置成就的显示顺序
scoreboard players set @e[name=achievement] data 1
## 获取玩家数
function lib/get_data/player_amount
## 清除多余的实体
kill @e[family=text_display]

# --- 成就房间（主角家楼下） ---

## 成就切换按钮，并显示悬浮文本
setblock -25 2 -45 birch_button ["button_pressed_bit":false,"facing_direction":2]
summon aw:text_display "§a上一个成就" -25 1 -45
setblock -29 2 -45 birch_button ["button_pressed_bit":false,"facing_direction":2]
summon aw:text_display "§a下一个成就" -29 1 -45
## 统计数据按钮，并显示悬浮文本
setblock -26 2 -51 birch_button ["button_pressed_bit":false,"facing_direction":1]
summon aw:text_display "§a查看统计数据" -26 1 -51
## 楼上悬浮文本
summon aw:text_display "§b查看米云溪翻译手稿、成就和统计数据" -24 7.0 -48
summon aw:text_display "§b§l↓ ↓ ↓" -24 6.7 -48
## 楼上制作者名单
setblock -25 7 -51 birch_button ["button_pressed_bit":false,"facing_direction":1]
summon aw:text_display "§a查看制作者名单" -25 7 -51


## 显示成就
function lib/show_achievements

## 重置讲台并显示悬浮文本
structure load aw:lecture_with_book -27 1 -45
summon aw:text_display "§b米云溪的翻译手稿" -27 1.0 -44.9

# --- 重置房间（张宇商店） ---
summon aw:text_display "§b和张宇交互开启下一场试炼" -22 3 41

# --- 村庄内 ---
summon aw:text_display "§a§l=== 测试组 ===" -26 4 -21
summon aw:text_display "§a§l=== 主作者组 ===" -31 3 -34.0
summon aw:text_display "§a§l=== 建筑 & 资源包组 ===" -31 3 -28.0
summon aw:text_display "§a§l=== 剧情组 ===" -10 4 -32
