# ===== 玩家离开张宇商店时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInShop data 0

# 在门口显示文本展示实体
    summon aw:text_display "§l§f张宇的商店" -21.0 3.5 34
    summon aw:text_display "§a和张宇交互开启下一场试炼" -21.0 3.2 34
