# ===== 物品快捷栏标题 =====
# 当手持特定物品时，将在快捷栏标题显示物品属性。该快捷栏标题的显示优先级高于常规关卡号。

## --- 生命药水 I ---
execute @e[name=level,scores={background=111..210}] ~~~ titleraw @a[hasitem={item=aw:health_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+8 生命值 (♥*4) §7| §6药水上限 §a1"}]}
execute @e[name=level,scores={background=211..310}] ~~~ titleraw @a[hasitem={item=aw:health_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+8 生命值 (♥*4) §7| §6药水上限 §a2"}]}
execute @e[name=level,scores={background=311..}] ~~~ titleraw @a[hasitem={item=aw:health_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+8 生命值 (♥*4) §7| §6药水上限 §a3"}]}

## --- 生命药水 II ---
execute @e[name=level,scores={background=221..410}] ~~~ titleraw @a[hasitem={item=aw:health_potion_2,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+64 生命值 (♥*32) §7| §6药水上限 §a1"}]}
execute @e[name=level,scores={background=411..}] ~~~ titleraw @a[hasitem={item=aw:health_potion_2,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+64 生命值 (♥*32) §7| §6药水上限 §a2"}]}

## --- 生命恢复药水 I ---
execute @e[name=level,scores={background=121..}] ~~~ titleraw @a[hasitem={item=aw:regeneration_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6生命恢复 II (0:15) §7| §6药水上限 §a1"}]}

## --- 抗性提升药水 I & II ---
execute @e[name=level,scores={background=131..420}] ~~~ titleraw @a[hasitem={item=aw:resistance_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6抗性提升 III (0:20)"}]}
execute @e[name=level,scores={background=421..}] ~~~ titleraw @a[hasitem={item=aw:resistance_potion_2,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6抗性提升 IV (0:20)"}]}

## --- 生命提升药水 I & II ---
execute @e[name=level,scores={background=231..440}] ~~~ titleraw @a[hasitem={item=aw:health_boost_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+8 生命值 (♥*4) 上限 (2:00)"}]}
execute @e[name=level,scores={background=441..}] ~~~ titleraw @a[hasitem={item=aw:health_boost_potion_2,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6+20 生命值 (♥*4) 上限 (2:00)"}]}

## --- 全提升药水 I ---
execute @e[name=level,scores={background=321..}] ~~~ titleraw @a[hasitem={item=aw:boost_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6抗性提升 III (0:20)，+8 生命值 (♥*4) 上限 (2:00) §7| §6药水上限 §a1"}]}

## --- 力量药水 I ---
execute @e[name=level,scores={background=341..}] ~~~ titleraw @a[hasitem={item=aw:strength_potion_1,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6力量 I (0:30) §7| §6药水上限 §a1"}]}

## --- 绳枪 ---
titleraw @a[hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6右键（或手机版长按）使用，可以钩住一定范围内的木板方块，从而把自己拉过去"}]}

## --- 箭袋 ---
titleraw @a[hasitem={item=aw:quiver,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6放在背包里可以提升箭的上限"}]}

## --- 物品准星 ---
titleraw @a[hasitem={item=aw:enable_crosshair,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§6右键（或手机版长按）使用，在手持绳枪时启用虚拟准星，建议未启用准星的手机版玩家使用\n§c注意：启用虚拟准星可能阻挡屏幕中央文字"}]}