# ===== 标记操作 =====
# 在游戏失败时进行的标记操作：将本关标记改为下关标记，上关标记改为本关标记。
# 调用此方法时：无需修饰。

event entity @e[has_property={aw:level="this"}] aw:set_next_level
event entity @e[has_property={aw:level="prev"}] aw:set_this_level
