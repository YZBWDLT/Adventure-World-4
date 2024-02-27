# ===== 物品快捷栏标题 =====
# 当手持特定物品时，将在快捷栏标题显示物品属性。该快捷栏标题的显示优先级高于常规关卡号。

## --- 七大药水 ---

### 治疗药水
execute @e[name=level,scores={data=111..120}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a1"}]}
execute @e[name=level,scores={data=121..130}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a2"}]}
execute @e[name=level,scores={data=131..310}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a3"}]}
execute @e[name=level,scores={data=311..320}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a4"}]}
execute @e[name=level,scores={data=321..330}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a5"}]}
execute @e[name=level,scores={data=331..}] ~~~ titleraw @a[hasitem={item=aw:potion_health,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑ §7| §6药水上限 §a6"}]}
### 生长药水
titleraw @a[hasitem={item=aw:potion_growth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命上限 ↑ 生命恢复 ↑ §c攻击伤害 ↓ §7| §c× 亢奋药水 × 神龟药水"}]}
### 亢奋药水
titleraw @a[hasitem={item=aw:potion_thrill,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a攻击伤害 ↑ 移动速度 ↑ §c生命 ↓ §7| §c× 生长药水 × 神龟药水"}]}
### 神龟药水
titleraw @a[hasitem={item=aw:potion_turtle,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a抗性 ↑ 伤害吸收 ↑↑ §c移动速度 ↓ §7| §c× 亢奋药水 × 生长药水"}]}
### 重生药水
titleraw @a[hasitem={item=aw:potion_rebirth,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命 ↑↑ §c攻击伤害 ↓↓§f☹ "}]}
### 净化药水
titleraw @a[hasitem={item=aw:potion_purification,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a伤害吸收 ↑ 中毒解除 ↑↑ "}]}
### 休眠药水
titleraw @a[hasitem={item=aw:potion_hibernation,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§a生命恢复 ↑↑§f☹ §c移动速度 ↓↓§f☹ §7| §c⚠ 生长药水"}]}

## --- 绳枪 ---
titleraw @a[hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§f右键（或手机版长按）使用\n\n§6可以钩住一定范围内的木板方块\n从而把自己拉过去"}]}

## --- 物品准星 ---
titleraw @a[hasitem={item=aw:enable_crosshair,location=slot.weapon.mainhand}] actionbar {"rawtext":[{"text":"§f右键（或手机版长按）使用\n\n§6在手持绳枪时启用虚拟准星\n建议未启用准星的手机版玩家使用\n\n§c注意：启用虚拟准星\n可能阻挡屏幕中央文字"}]}

## --- 钻石靴子 & 钻石头盔 ---
## 当玩家还没有附魔的时候，强制提醒玩家附魔
execute @e[name=level,scores={data=311..640}] ~~~ titleraw @a[scores={isHoldingHelmet=0}] actionbar {"rawtext":[{"text":"§c您刚刚获得了一个钻石头盔，请手持钻石头盔以获取附魔！"}]}
execute @e[name=level,scores={data=321..640}] ~~~ titleraw @a[scores={isHoldingBoots=0}] actionbar {"rawtext":[{"text":"§c您刚刚获得了一个钻石靴子，请手持钻石靴子以获取附魔！"}]}
