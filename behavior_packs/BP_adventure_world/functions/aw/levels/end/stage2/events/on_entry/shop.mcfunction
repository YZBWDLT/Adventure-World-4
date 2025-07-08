# ===== 玩家进入张宇商店时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInShop data 1

# 移除门口的文本展示实体
    event entity @e[type=aw:text_display,x=-21.0,y=3,z=34,r=1.5] aw:remove_immediately
