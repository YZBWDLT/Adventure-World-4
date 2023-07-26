# 箭上限设置(循环执行)

## 当没有箭袋时，上限为12
clear @a[hasitem=[{item=aw:quiver,quantity=0},{item=arrow,quantity=13..}]] minecraft:arrow 0 1

## 当有箭袋时，上限为36
clear @a[hasitem=[{item=aw:quiver},{item=arrow,quantity=37..}]] minecraft:arrow 0 1