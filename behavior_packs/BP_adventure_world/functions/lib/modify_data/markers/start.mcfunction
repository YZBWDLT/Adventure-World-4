# ===== 标记操作 =====
# 在开始游戏时进行的标记操作：将本关标记改为上关标记，下关标记改为本关标记。
# 调用此方法时：无需修饰。

event entity @e[has_property={aw:level="this"}] aw:set_prev_level
event entity @e[has_property={aw:level="next"}] aw:set_this_level
