# ===== 显示统计数据 =====

function lib/get_data/player_amount
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a ~~~ function lib/get_data/stats_singleplayer
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a ~~~ function lib/get_data/stats_multiplayer
setblock -26 2 -51 birch_button ["button_pressed_bit":false,"facing_direction":1]
