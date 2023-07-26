# 游戏开始过场

## 调整游戏模式
gamemode adventure @a

## 清除信标
setblock 44 26 86 air

## 清除悬浮文本
kill @e[type=aw:text_display]

## 重新设定出生点
setworldspawn -27 6 -48

## 传送玩家
tp @a 36 26 87

## 游戏开幕
scoreboard players set @e[name=gameStartingTick] active 1

## 清除标记
kill @e[name=readyToStart]