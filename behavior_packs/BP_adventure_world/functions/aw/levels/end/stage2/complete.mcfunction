# ===== 完成关卡 =====
# 10-2 | 进行最终结算
# （本关完成关卡为跳转到 stage3）

# 移除临时变量
    scoreboard players reset temp.hasPlayerInHome data
    scoreboard players reset temp.hasPlayerInHomeUp data
    scoreboard players reset temp.hasPlayerInHomeDown data
    scoreboard players reset temp.hasPlayerInShop data
    scoreboard players reset temp.creditPage data
    scoreboard players reset temp.achievementPage data
    scoreboard players reset temp.statPage data

# 触发 stage3
    function aw/levels/end/stage3/start
# 重新设置林乐家
    fill -29 3 -45 -25 1 -45 air
    fill -29 3 -45 -28 3 -45 bookshelf
    structure load aw:lecture_no_book -27 1 -45
    setblock -25 7 -51 air
# 移除公告板
    execute as @e[type=aw:billboard,rym=-92,ry=-88] at @s positioned ~~~-2 run fill ~~~~~3~4 air
    event entity @e[type=aw:billboard] aw:remove_immediately
