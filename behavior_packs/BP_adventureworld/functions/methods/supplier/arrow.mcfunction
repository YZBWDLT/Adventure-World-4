# ===== 箭补充器 =====
# 当无箭袋的玩家少于11根箭，或有箭袋的玩家少于35根箭时
# 在合适的时间段调用此函数即可按需补充合理数目的箭

## --- 清除当前场上的箭 ---
kill @e[type=arrow]

## --- 当玩家无箭袋时，给予12根箭 ---
give @a[hasitem=[{item=bow},{item=arrow,quantity=11},{item=aw:quiver,quantity=0}]] arrow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=10},{item=aw:quiver,quantity=0}]] arrow 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=9},{item=aw:quiver,quantity=0}]] arrow 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=8},{item=aw:quiver,quantity=0}]] arrow 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=7},{item=aw:quiver,quantity=0}]] arrow 5 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=6},{item=aw:quiver,quantity=0}]] arrow 6 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=5},{item=aw:quiver,quantity=0}]] arrow 7 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=4},{item=aw:quiver,quantity=0}]] arrow 8 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=3},{item=aw:quiver,quantity=0}]] arrow 9 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=2},{item=aw:quiver,quantity=0}]] arrow 10 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=1},{item=aw:quiver,quantity=0}]] arrow 11 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=0},{item=aw:quiver,quantity=0}]] arrow 12 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 当玩家有箭袋时，给予36根箭 ---
give @a[hasitem=[{item=bow},{item=arrow,quantity=35},{item=aw:quiver}]] arrow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=34},{item=aw:quiver}]] arrow 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=33},{item=aw:quiver}]] arrow 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=32},{item=aw:quiver}]] arrow 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=31},{item=aw:quiver}]] arrow 5 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=30},{item=aw:quiver}]] arrow 6 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=29},{item=aw:quiver}]] arrow 7 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=28},{item=aw:quiver}]] arrow 8 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=27},{item=aw:quiver}]] arrow 9 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=26},{item=aw:quiver}]] arrow 10 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=25},{item=aw:quiver}]] arrow 11 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=24},{item=aw:quiver}]] arrow 12 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=23},{item=aw:quiver}]] arrow 13 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=22},{item=aw:quiver}]] arrow 14 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=21},{item=aw:quiver}]] arrow 15 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=20},{item=aw:quiver}]] arrow 16 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=19},{item=aw:quiver}]] arrow 17 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=18},{item=aw:quiver}]] arrow 18 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=17},{item=aw:quiver}]] arrow 19 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=16},{item=aw:quiver}]] arrow 20 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=15},{item=aw:quiver}]] arrow 21 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=14},{item=aw:quiver}]] arrow 22 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=13},{item=aw:quiver}]] arrow 23 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=12},{item=aw:quiver}]] arrow 24 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=11},{item=aw:quiver}]] arrow 25 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=10},{item=aw:quiver}]] arrow 26 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=9},{item=aw:quiver}]] arrow 27 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=8},{item=aw:quiver}]] arrow 28 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=7},{item=aw:quiver}]] arrow 29 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=6},{item=aw:quiver}]] arrow 30 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=5},{item=aw:quiver}]] arrow 31 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=4},{item=aw:quiver}]] arrow 32 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=3},{item=aw:quiver}]] arrow 33 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=2},{item=aw:quiver}]] arrow 34 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=1},{item=aw:quiver}]] arrow 35 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[hasitem=[{item=bow},{item=arrow,quantity=0},{item=aw:quiver}]] arrow 36 0 {"item_lock":{"mode":"lock_in_inventory"}}