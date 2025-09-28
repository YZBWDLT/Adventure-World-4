# ===== 显示综合评价细则 =====

setblock -28 2 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=false]

tellraw @p {"rawtext":[{"translate":"§l===== 综合评价细则 =====\n"}]}
tellraw @p {"rawtext":[{"translate":"§7您可通过本表计算您获得更高评价的方法。\n"}]}
execute if score playerAmount record matches 1 run tellraw @p {"rawtext":[{"translate":"您的分数 | §a%%s\n","with":{"rawtext":[{"score":{"objective":"record","name":"score"}}]}}]}
execute if score playerAmount record matches 2.. run tellraw @p {"rawtext":[{"translate":"§7在多人情况下，试炼分数不可用。\n"}]}
tellraw @p {"rawtext":[{"translate":"§l--- 分值要求 ---"}]}
tellraw @p {"rawtext":[{"translate":"§bS§7级：105+ | §aA§7级：91~105 | §3B§7级：76~90 | §eC§7级：60~75"}]}
tellraw @p {"rawtext":[{"translate":"§6D§7级：46~60 | §cE§7级：31~45 | §4F§7级：0~30 | §7F-§7级（作弊）：-1"}]}
tellraw @p {"rawtext":[{"translate":"§l--- 加分细则 ---"}]}
tellraw @p {"rawtext":[{"translate":"难度 | §7难度4：§a+40§7，难度3：§a+20§7，§7难度2：§a+10§7"}]}
tellraw @p {"rawtext":[{"translate":"时长 | §7<60分钟：§a+40§7，60~74分钟：§a+35§7，75~89分钟：§a+30§7，90~104分钟：§a+25§7，105~119分钟：§a+20§7，120~134分钟：§a+15§7，135~150分钟：§a+10§7，150~165分钟：§a+5"}]}
tellraw @p {"rawtext":[{"translate":"死亡 | §70次：§a+60§7，1次：§a+50§7，2~3次：§a+40§7，4~6次：§a+30§7，7~10次：§a+20§7，11~15：§a+10"}]}
tellraw @p {"rawtext":[{"translate":"药水 | §7未使用过除治疗药水外的药水：§a+10"}]}
