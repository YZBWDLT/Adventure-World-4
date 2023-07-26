# 记分板设置

scoreboard objectives remove stats
scoreboard objectives remove time
scoreboard objectives remove active
scoreboard objectives remove crosshair

scoreboard objectives add stats dummy "后台数据"
scoreboard objectives add time dummy "时间数据"
scoreboard objectives add active dummy "激活数据"
scoreboard objectives add crosshair dummy "准心数据"

scoreboard players set allFailedTimes stats 0
scoreboard players set @a crosshair 0