# ===== 箭上限设置 =====
# 本函数规范了玩家的箭上限的设置。循环执行。

## --- 当没有箭袋时，上限为12 ---
scoreboard players set @a[hasitem=[{item=aw:quiver,quantity=0},{item=arrow,quantity=13..}]] temp 1
clear @a[scores={temp=1}] arrow
give @a[scores={temp=1}] arrow 12

## --- 当有箭袋时，上限为36 ---
scoreboard players set @a[hasitem=[{item=aw:quiver},{item=arrow,quantity=37..}]] temp 2
clear @a[scores={temp=2}] arrow
give @a[scores={temp=2}] arrow 36

scoreboard players set @a temp 0
