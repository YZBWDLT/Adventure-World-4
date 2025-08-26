# ===== 转换到新场景 =====
# 在黑屏后，转换所有玩家到村庄内

# 传送玩家
    tp @a -26 1 -37 facing -25 1 -34

# NPC 重设定
    event entity @e[type=aw:npc] aw:remove_immediately
    summon aw:npc -25 1 -34 facing @p aw:npc_miyunxi "米云溪"
    summon aw:npc -23 1 -35 facing @p aw:npc_tianying "田英"
    summon aw:npc -21 3 42 facing @p aw:npc_zhangyu "张宇"
    summon aw:npc 0 2 -29 facing @p aw:npc_linan "李南"
    summon aw:npc -43 1 -34 facing @p aw:npc_hanlinqing "韩林清"
    summon aw:npc -6 1 -5 facing @p aw:npc_chenqi "陈琦"
    summon aw:npc -38 1 -3 facing @p aw:npc_zhaoxiangqian "赵向前"
    summon aw:npc -2 1 18 facing @p aw:npc_liqing "李晴"
    event entity @e[name="张宇"] aw:state_sit

# 清除多余实体
    event entity @e[type=aw:wild_sword] aw:remove_immediately
