# 快捷栏标题控制器

function methods/entity_amount_tester

execute @e[name=level,scores={background=100..109}] ~~~ function levels/chapter1/1_0/actionbar_title
execute @e[name=level,scores={background=110..119}] ~~~ function levels/chapter1/1_1/actionbar_title
execute @e[name=level,scores={background=120..129}] ~~~ function levels/chapter1/1_2/actionbar_title
execute @e[name=level,scores={background=130..139}] ~~~ function levels/chapter1/1_3/actionbar_title
execute @e[name=level,scores={background=200..209}] ~~~ function levels/chapter2/2_0/actionbar_title
execute @e[name=level,scores={background=210..219}] ~~~ function levels/chapter2/2_1/actionbar_title
execute @e[name=level,scores={background=220..229}] ~~~ function levels/chapter2/2_2/actionbar_title
execute @e[name=level,scores={background=230..239}] ~~~ function levels/chapter2/2_3/actionbar_title
execute @e[name=level,scores={background=300..309}] ~~~ function levels/chapter3/3_0/actionbar_title
execute @e[name=level,scores={background=310..319}] ~~~ function levels/chapter3/3_1/actionbar_title
execute @e[name=level,scores={background=320..329}] ~~~ function levels/chapter3/3_2/actionbar_title
execute @e[name=level,scores={background=330..339}] ~~~ function levels/chapter3/3_3/actionbar_title
execute @e[name=level,scores={background=340..349}] ~~~ function levels/chapter3/3_4/actionbar_title
execute @e[name=level,scores={background=400..409}] ~~~ function levels/chapter4/4_0/actionbar_title
execute @e[name=level,scores={background=410..419}] ~~~ function levels/chapter4/4_1/actionbar_title
execute @e[name=level,scores={background=420..429}] ~~~ function levels/chapter4/4_2/actionbar_title
execute @e[name=level,scores={background=430..439}] ~~~ function levels/chapter4/4_3/actionbar_title
execute @e[name=level,scores={background=440..449}] ~~~ function levels/chapter4/4_4/actionbar_title
execute @e[name=level,scores={background=500..509}] ~~~ function levels/chapter5/actionbar_title
execute @e[name=level,scores={background=600..609}] ~~~ function levels/chapter6/6_0/actionbar_title
execute @e[name=level,scores={background=610..619}] ~~~ function levels/chapter6/6_1/actionbar_title
execute @e[name=level,scores={background=620..629}] ~~~ function levels/chapter6/6_2/actionbar_title
execute @e[name=level,scores={background=630..639}] ~~~ function levels/chapter6/6_3/actionbar_title
execute @e[name=level,scores={background=640..649}] ~~~ function levels/chapter6/6_4/actionbar_title
execute @e[name=level,scores={background=700..709}] ~~~ function levels/chapter7/7_0/actionbar_title
execute @e[name=level,scores={background=710..719}] ~~~ function levels/chapter7/7_1/actionbar_title
execute @e[name=level,scores={background=720..729}] ~~~ function levels/chapter7/7_2/actionbar_title
execute @e[name=level,scores={background=730..739}] ~~~ function levels/chapter7/7_3/actionbar_title
execute @e[name=level,scores={background=740..749}] ~~~ function levels/chapter7/7_4/actionbar_title
execute @e[name=level,scores={background=750..759}] ~~~ function levels/chapter7/7_5/actionbar_title

function items/actionbar_title

execute @e[name=level,scores={background=311..}] ~~~ titleraw @a[scores={isHoldingHelmet=0}] actionbar {"rawtext":[{"text":"§c请手持钻石头盔以获取附魔！"}]}
execute @e[name=level,scores={background=321..}] ~~~ titleraw @a[scores={isHoldingBoots=0}] actionbar {"rawtext":[{"text":"§c请手持钻石靴子以获取附魔！"}]}
# titleraw @a actionbar {"rawtext":[{"translate":"wave=%%s | lastWaveCompleted=%%s | monsterSummonDelay=%%s","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}},{"score":{"objective":"background","name":"@e[name=lastWaveCompleted]"}},{"score":{"objective":"time","name":"@e[name=monsterSummonDelay]"}}]}}]}