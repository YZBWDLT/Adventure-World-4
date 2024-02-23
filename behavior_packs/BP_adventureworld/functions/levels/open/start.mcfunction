# ===== 游戏开始 =====

## --- 调整游戏模式 ---
gamemode adventure @a

## --- 清除信标 ---
setblock 44 26 86 air

## --- 清除悬浮文本 ---
kill @e[type=aw:text_display]

## --- 重新设定出生点 ---
setworldspawn 36 26 87

## --- 传送玩家 ---
tp @a 36 26 87
tp @e[family=respawner] 36 26 87

## --- 游戏开幕 ---
function lib/timeline/enable
scoreboard players set @e[name=level] background 2