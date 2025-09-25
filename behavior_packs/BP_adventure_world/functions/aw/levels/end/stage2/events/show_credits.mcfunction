# ===== 显示制作人名单 =====

# 移除原有的文本展示实体
    event entity @e[type=aw:text_display,x=-25,y=6,z=-51,dy=5] aw:remove_immediately

# 页数
    ## 起始页
        execute if score temp.creditPage data matches 0 run summon aw:text_display "§a查看制作者名单" -25 7 -51
    ## 第 1 页
        execute if score temp.creditPage data matches 1 run summon aw:text_display "§a§l--- 策划 & 关卡设计 ---" -25 7.9 -51
        execute if score temp.creditPage data matches 1 run summon aw:text_display "§b狂野巴豆§7（Andy7343）" -25 7.6 -51
        execute if score temp.creditPage data matches 1 run summon aw:text_display "§b一只卑微的量筒§7（YZBWDLT）" -25 7.3 -51
        execute if score temp.creditPage data matches 1 run summon aw:text_display "§71/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 2 页
        execute if score temp.creditPage data matches 2 run summon aw:text_display "§a§l--- 命令函数 & 行为包 ---" -25 7.9 -51
        execute if score temp.creditPage data matches 2 run summon aw:text_display "§b量筒§7（YZBWDLT）" -25 7.6 -51
        execute if score temp.creditPage data matches 2 run summon aw:text_display "§b巴豆§7（Andy7343）【怪物数值与特性调整】" -25 7.3 -51
        execute if score temp.creditPage data matches 2 run summon aw:text_display "§72/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 3 页
        execute if score temp.creditPage data matches 3 run summon aw:text_display "§a§l--- 地图建筑 ---" -25 7.9 -51
        execute if score temp.creditPage data matches 3 run summon aw:text_display "§bo绿叶o§7（GreeLeaf）" -25 7.6 -51
        execute if score temp.creditPage data matches 3 run summon aw:text_display "§b鸽子§7（PigeonKI）" -25 7.3 -51
        execute if score temp.creditPage data matches 3 run summon aw:text_display "§73/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 4 页
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§a§l--- 资源包 ---" -25 8.8 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§b量筒§7（YZBWDLT）【包主体&旷野之剑模型设计】" -25 8.5 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§b文雨§7（KrisWenYu）【NPC皮肤&物品图标绘制】" -25 8.2 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§b狂野巴豆§7（Andy7343）【物品图标设计&旷野之剑模型设计】" -25 7.9 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§b浮纸§7【NPC皮肤】" -25 7.6 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§b欢喜§7【NPC皮肤】" -25 7.3 -51
        execute if score temp.creditPage data matches 4 run summon aw:text_display "§74/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 5 页
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§a§l--- 剧情设计 ---" -25 8.5 -51
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§b巴豆§7（Andy7343）" -25 8.2 -51
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§b比翼鸟§7（KianaKasnala947）【对话优化】" -25 7.9 -51
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§b鸽子§7（PigeonKI）【对话优化】" -25 7.6 -51
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§b小鼠§7（xiaoshu512）【对话优化】" -25 7.3 -51
        execute if score temp.creditPage data matches 5 run summon aw:text_display "§75/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 6 页
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§a§l--- 4.2（新版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b量筒§7（YZBWDLT）" -25 9.7 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b硫化银§7（yiyishi54188）" -25 9.4 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b巴豆§7（Andy7343）" -25 9.1 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b文雨§7（KrisWenYu）" -25 8.8 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b小飞侠§7（tck1122）" -25 8.5 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§blanos§7（lanos212）" -25 8.2 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b鸽子§7（PigeonKI）" -25 7.9 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b南瓜汁§7（PumpkinJui）" -25 7.6 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§b比翼鸟§7（KianaKasnala947）" -25 7.3 -51
        execute if score temp.creditPage data matches 6 run summon aw:text_display "§76/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 7 页
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§a§l--- 4.2（新版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b绿叶§7（GreeLeaf）" -25 9.7 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§7（xhduoduobaby）" -25 9.4 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b小鼠§7（xiaoshu512）" -25 9.1 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b火卫三§7（IBukreev）" -25 8.8 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b蒙德人§7（Tuffy2020China）" -25 8.5 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b橘子§7（freeorange114）" -25 8.2 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b龙龙§7（longlongxiaotao）" -25 7.9 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b鱼周§7（UnhandyShark856）" -25 7.6 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§b海王星§7（Neptune exe1591）" -25 7.3 -51
        execute if score temp.creditPage data matches 7 run summon aw:text_display "§77/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 8 页
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§a§l--- 4.2（新版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b星辰§7（xc13599305）" -25 9.7 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b命令块§7（CommandBlock228）" -25 9.4 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b王牌§7（wang9800）" -25 9.1 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b残梦§7（xiaomluoch）" -25 8.8 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b十三酱§7（Rss and L53）" -25 8.5 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b小面包§7（Xiaomianbao2007）" -25 8.2 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§bjiou§7（jioujoiu）" -25 7.9 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b烟雨§7（RustyAbyss29193）" -25 7.6 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§b伊莱§7（ylklsaua）" -25 7.3 -51
        execute if score temp.creditPage data matches 8 run summon aw:text_display "§78/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 9 页
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§a§l--- 4.2（新版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b宽判§7（kuanpan 9527）" -25 9.7 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b吊桥§7（diaoqiaoyl）" -25 9.4 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b条形马§7（QRnobelly）" -25 9.1 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b基岩§7（Ender5207541）" -25 8.8 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b擺给§7（BaiGeiSavior）" -25 8.5 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b闲鱼§7（Ruawer153）" -25 8.2 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b草方块§7（Tuanzi555）" -25 7.9 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b帕§7（Hfpa0117）" -25 7.6 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§b抖抖抖§7（SpyingLace85493）" -25 7.3 -51
        execute if score temp.creditPage data matches 9 run summon aw:text_display "§79/13 | 括号内为 XBoxID" -25 7.0 -51
    ## 第 10 页
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§a§l--- 4.0（旧版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b量筒§7（YZBWDLT）" -25 9.7 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b巴豆§7（Andy7343）" -25 9.4 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b鸽子§7（PigeonKI）" -25 9.1 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b南瓜汁§7（PumpkinJui）" -25 8.8 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b蒙德人§7（Tuffy2020China）" -25 8.5 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b小鼠§7（xiaoshu512）" -25 8.2 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b火卫三§7（IBukreev）" -25 7.9 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b文雨§7（KrisWenYu）" -25 7.6 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§b绿叶§7（GreeLeaf）" -25 7.3 -51
        execute if score temp.creditPage data matches 10 run summon aw:text_display "§710/13 | 括号内为 XBoxID | 不按贡献排序" -25 7.0 -51
    ## 第 11 页
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§a§l--- 4.0（旧版）测试员 ---" -25 10.0 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b星辰§7（xc13599305）【首批通关单人4级的玩家】" -25 9.7 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b帕§7（Hfpa0117）【首批通关单人4级的玩家】" -25 9.4 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b比翼鸟§7（KianaKasnala947）" -25 9.1 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b基岩§7（Ender5207541）" -25 8.8 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b烟雨§7（RustyAbyss29193）" -25 8.5 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b千里§7（EnderLife5409）" -25 8.2 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b水晶哥§7（OneKitty710926）" -25 7.9 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b风暴§7（FoxLanMo）" -25 7.6 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§b宽判§7（kuanpan 9527）" -25 7.3 -51
        execute if score temp.creditPage data matches 11 run summon aw:text_display "§711/13 | 括号内为 XBoxID | 不按贡献排序" -25 7.0 -51
    ## 第 12 页
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§a§l--- 4.0（旧版）测试员 ---" -25 9.4 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b龙龙§7（longlongxiaotao）" -25 9.1 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b辉金§7（huijinya520）" -25 8.8 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b清风§7（qing feng 00317）" -25 8.5 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b命令块§7（CommandBlock228）" -25 8.2 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b麦热§7（havefuningame07）" -25 7.9 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b虾皮§7（xia pi 000）" -25 7.6 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§b小意§7（xiaoyia666）" -25 7.3 -51
        execute if score temp.creditPage data matches 12 run summon aw:text_display "§712/13 | 括号内为 XBoxID | 不按贡献排序" -25 7.0 -51
    ## 第 13 页
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§a§l--- 特别鸣谢 ---" -25 8.5 -51
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§7xhduoduobaby【感谢你一年来无偿为我们提供服务器做地图！！帮大忙了！】" -25 8.2 -51
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§b晨风§7（ChenfengAB）【感谢你帮忙投稿！】" -25 7.9 -51
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§bProjectXero§7【再次感谢你帮忙找屏蔽词！】" -25 7.6 -51
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§bE尘§7（E1cheng）【感谢你在最后的时刻帮我改好绳枪！】" -25 7.3 -51
        execute if score temp.creditPage data matches 13 run summon aw:text_display "§713/13 | 括号内为 XBoxID | 不按贡献排序" -25 7.0 -51

